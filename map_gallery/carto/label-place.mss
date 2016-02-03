#label_place_static
    [zoom>=5][zoom<=10]
    [continent='North America'] {

    [layer=4][zoom=5],
    [layer=5][zoom=6],
    [layer=6][zoom=7],
    [layer=7][zoom=8],
    [layer=8][zoom=9],
    [layer>=9][zoom>=10] {
        
        shield-file: url('res/Assets/place-circle.svg');
        shield-unlock-image: true;
        shield-face-name: @font-place;
        shield-name: [name];
        shield-placement-type: simple;
        shield-placement: point;
        shield-size: [font_size] / 2 + 12; // data defined font is too large
        shield-text-dx: 5; shield-text-dy: 5;
        shield-fill: @label-place;
        shield-halo-radius: @halo-radius-default;
        shield-halo-fill: @label-place-halo;
        shield-halo-opacity: @label-place-halo-opacity;
        shield-margin: 2;

        // data defined placement
        [justify='left'] {
            shield-placements: 'E,NE,W';
        }
        [justify='right'] {
            shield-placements: 'W,SW,E';
        }
        shield-placements: 'E,NE,W,SW,S';
    }
//    debug-mode: collision;
}


//#label_place_high   [zoom>=11],
#label_place_lv1[zoom>=11],
#label_place_lv2[zoom>=12],
#label_place_lv3[zoom>=13],
{
//    ::point {
//        point-ignore-placement: true;
//        point-allow-overlap: true;
//    }

//    text-name: [name]+'\n('+[feature]+')';
    text-name: '';
    text-face-name: @font-place;
    text-placement: point;
    text-fill: @label-place;
    text-halo-fill: @label-place-halo;
    text-halo-opacity: @label-place-halo-opacity;
    text-halo-radius: @halo-radius-default;
    text-margin: 2;

    [feature='city'],
    {
        text-name: [name];
        text-size: 28;
        text-wrap-width: 150;

        [zoom>=13][zoom<=14] { text-character-spacing: 2; }
        [zoom>=15] { text-character-spacing: 4; }

    }

    [feature='town'], {
        text-name: [name];
        text-size: 22;
        text-wrap-width: 120;

        [zoom>=13][zoom<=14] { text-character-spacing: 1; }
        [zoom>=15] { text-character-spacing: 2; }
    }

    [feature='village'] {
        text-name: [name];
        text-size: 18;
        text-wrap-width: 120;

        [zoom>=13] { text-character-spacing: 1; }
    }

    [feature='quarter'] {
        text-name: [name];
        text-size: 18;
        text-transform: uppercase;
        [zoom>=13] { text-character-spacing: 1; }
    }

    [feature='neighbourhood'],
    [feature='suburb'],
    [feature='hamlet'][zoom>=14],
    [feature='locality'][zoom>=14],
    [feature='isolated_dwelling'][zoom>=15],
    [feature='farm'][zoom>=15],
    {
        text-name: [name];
        text-size: 18;
        text-transform: uppercase;
        text-wrap-width: 60;
        [zoom<=13] { text-margin: 24; }
        [zoom>=14] { text-margin: 16; }
        [zoom>=14] { text-character-spacing: 1; }
    }
//    debug-mode: collision;
}
