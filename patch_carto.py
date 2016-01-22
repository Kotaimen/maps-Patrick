#!/usr/bin/env python3
# -*- encoding: utf-8 -*-

""" Patch carto (https://github.com/mapbox/carto) generated mapnik xml for
better render performance. """

from __future__ import print_function

__author__ = 'kotaimen'
__date__ = '6/26/15'

import sys
import re
import argparse
import lxml.etree as ET

DEBUG = False


#
# Mapnik XML patchers, modifies XML tree in place
#

def remove_dead_symbolizers(root):
    """Remove symbolizers with no render effect.

    <Rule>
        <MaxScaleDenominator>
        <MinScaleDenominator>
        <Filter>
        <Symbolizer>
    """
    count = 0
    for rule in root.xpath('./Style/Rule'):
        for symbolizer in rule.xpath(
                '''
                ./*[
                     ( name()='PolygonSymbolizer' and @fill='rgba(0, 0, 0, 0)'  )
                  or ( name()='LineSymbolizer' and ( @stroke-width="0" or @stroke='rgba(0, 0, 0, 0)' ) )
                  or ( name()='TextSymbolizer' and text()=''  )
                ]
                '''):
            if DEBUG: ET.dump(symbolizer)
            count += 1
            rule.remove(symbolizer)
    print('Removed %d dead symbolizers.' % count)


def remove_dead_rules(root):
    """Remove rules with no symbolizers

    <Style>
        <Rule>
            <Symbolizer>
    """
    count = 0
    for style in root.xpath('./Style'):
        for rule in style.xpath(
                "./Rule[count(*[contains(name(),'Symbolizer')])=0]"):
            if DEBUG: ET.dump(rule)
            count += 1
            style.remove(rule)
    print('Removed %d dead rules.' % count)


def remove_dead_layers(root):
    """Remove layers turned off or styles or complete transparent

    <Layer>
        <StyleName>
    """
    count = 0
    for layer in root.xpath('''
        ./Layer[
            @status='off'
         or count(StyleName)=0
        ]'''):
        if DEBUG: ET.dump(layer)
        count += 1
        root.remove(layer)
    print('Removed %d dead layers.' % count)


def remove_dead_styles(root):
    """Remove unused styles

    <Style>

    <Layer>
        <StyleName>
    """
    # find styles referenced by all layers
    used_styles = set()

    for stylename in root.xpath('./Layer/StyleName'):
        used_styles.add(stylename.text)

    # delete unused styles
    count = 0
    for style in root.xpath('./Style'):
        if style.attrib['name'] not in used_styles:
            if DEBUG: print(style.attrib['name'])
            count += 1
            root.remove(style)

    print('Removed %d dead styles.' % count)


def disable_effects(root):
    """Disable all special effect layers"""
    count = 0
    for layer in root.xpath('./Layer'):
        for stylename in layer.xpath('''
            ./StyleName[contains(text(), '-effect_')]
        '''):
            # ET.dump(stylename)
            count += 1
            layer.remove(stylename)
    print('Disabled %d effects.' % count)


def patch_text_symbolizer(root):
    """Delete dummy placements to disable mapnik load warning"""
    count = 0
    for text in root.xpath(".//TextSymbolizer[@placement-type='dummy']"):
        if DEBUG: ET.dump(text)
        del text.attrib['placements']
        count += 1
    print('Patched %d text symbolizers' % count)


def patch_layer_cache_features(root):
    """Add "cache-features" to layer if they contain more than one styles."""
    count = 0
    for layer in root.xpath('''
        ./Layer[
             count(StyleName)>1
         and not(contains(@name, 'gen'))
        ]'''):
        if DEBUG: ET.dump(layer)
        count += 1
        layer.attrib['cache-features'] = 'yes'
    print('Enabled "cache-features" on %d layers.' % count)


def patch_map(root):
    """Patch map attributes"""
    try:
        del root.attrib['background-color']
        del root.attrib['background-image']
    except KeyError:
        pass


def patch_postgis(root):
    # XXX patch postgis datasource config
    pass


def patch_layer_scale_denominator(root):
    """Limit layer scale range, greatly speed up rendering.

    <Style>
        <Rule>
            <MaxScaleDenominator>
            <MinScaleDenominator>

    <Layer>
    """
    MAX_SCALE = 2 ** 32
    MIN_SCALE = -1

    # calculate style scale range from its rules
    styles = dict()
    for style in root.xpath('./Style'):
        style_max_scales = []
        style_min_scales = []
        for rule in style.xpath('./Rule'):
            max_scale = rule.find('MaxScaleDenominator')
            min_scale = rule.find('MinScaleDenominator')

            if max_scale is not None and min_scale is not None:
                style_max_scales.append(int(max_scale.text))
                style_min_scales.append(int(min_scale.text))
            elif min_scale is not None:
                style_min_scales.append(int(min_scale.text))
                style_max_scales.append(MAX_SCALE)
            elif max_scale is not None:
                style_max_scales.append(int(max_scale.text))
                style_min_scales.append(MIN_SCALE)
        styles[style.attrib['name']] = style_max_scales, style_min_scales

    # calculate layer scale range from style scale ranges
    count = 0
    for layer in root.xpath('./Layer'):
        max_scale = MIN_SCALE
        min_scale = MAX_SCALE
        for style_name in layer.xpath('./StyleName'):
            style_max_scales, style_min_scales = styles[style_name.text]
            if style_max_scales:
                max_scale = max(max_scale, max(style_max_scales))
            if style_min_scales:
                min_scale = min(min_scale, min(style_min_scales))
        count += 1
        if MAX_SCALE > max_scale > MIN_SCALE:
            # print  '  ...limit max scale to', max_scale
            layer.attrib['maximum-scale-denominator'] = str(max_scale)
        if MIN_SCALE < min_scale < MAX_SCALE:
            # print  '  ...limit min scale to', min_scale
            layer.attrib['minimum-scale-denominator'] = str(min_scale)

    print('Patched scale denominator on %d layers.' % count)


def patch_layer_buffer_size(root, buffer=32):
    """Overwrite non-label/shield layer buffer size, greatly speedup rendering

    <Style>
        <Rule>
            <MaxScaleDenominator>
            <MinScaleDenominator>

    <Layer>
    """
    count = 0
    for layer in root.xpath('./Layer'):
        if not layer.attrib['name'].startswith('label_'):
            count += 1
            layer.attrib['buffer-size'] = '%d' % buffer
    print('Patched buffer-size on %d layers' % count)


def patch_mapnik_xml(xml, options):
    """Patch mapnik xml for better render performance"""
    root = ET.fromstring(xml)
    num_of_elements = len(root.findall('.//*'))

    # individual patches are independent but orders matter!
    patch_map(root)
    remove_dead_symbolizers(root)
    remove_dead_rules(root)
    patch_text_symbolizer(root)
    remove_dead_layers(root)
    if not options['effects']:
        disable_effects(root)
    remove_dead_styles(root)
    patch_layer_cache_features(root)
    patch_layer_scale_denominator(root)
    patch_layer_buffer_size(root)

    print('Optimized map has %d XML elements (down from %d).' % \
          (len(root.findall('.//*')), num_of_elements))

    return ET.tostring(root, pretty_print=True)


def load_palette(options):
    with open('palette.%s.mss' % options['theme']) as fp:
        palette = fp.read()
        # patch scale factor
        palette = re.sub(r'@scale-factor:\s+\d+',
                         '@scale-factor: %d' % options['scale'],
                         palette)
        return palette


def parse_options():
    parser = argparse.ArgumentParser(
            description='Compile Carto generated mapnik xml stylesheets')

    parser.add_argument(
            'xml', type=str,
            help='mapnik stylesheet')

    parser.add_argument(
            '--effects', dest='effects', action='store_true',
            help='enable special effects (if any)')

    options = parser.parse_args()
    return options


def main():
    options = parse_options()
    options = vars(options)
    with open(options['xml']) as fp:
        xml = fp.read()
    xml = patch_mapnik_xml(xml, options)
    with open(options['xml'], 'w') as fp:
        fp.write(xml)
    print('Done.')


if __name__ == '__main__':
    main()
