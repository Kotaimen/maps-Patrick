#!/usr/bin/env python
# -*- encoding: utf-8 -*-

"""Generate road shields"""

import subprocess
import os

width_padding = 16
height_padding = 8
char_width = 12
char_height = 12

themes = [
    ('#ffffff', 'black', 'general'),
]

for fill, stroke, prefix in themes:
    for ch in range(1, 9):
        if ch <= 3:
            r = 12
        else:
            r = 4
        w, h = char_width * ch + width_padding, height_padding * 2 + char_height
        command = ['convert',
                   '-size', '%dx%d' % (w, h), 'xc:transparent',
                   '-fill', fill,
                   '-stroke', stroke,
                   '-strokewidth', '2',
                   '-draw',
                   'roundrectangle 0,0 %d,%d %d,%d' % (w - 1, h - 1, r, r),
                   'Stage/shield/%s-%dch.png' % (prefix, ch)
                   ]
        print ' '.join(command)
        subprocess.check_call(command)
