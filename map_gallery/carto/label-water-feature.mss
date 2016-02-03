#label_ocean_10m[zoom>=4] {
    [zoom=4][scalerank<=1],
    [zoom=5][scalerank<=2],
    [zoom=6][scalerank<=3],
    [zoom=7][scalerank<=4],
    [zoom=8][scalerank<=5],
    [zoom=9][scalerank<=6],
    [zoom>=10][scalerank<100], {
        [featurecla='ocean'] {
            text-size:  @text-size-xlarge;
            text-line-spacing: 6;
        }
        text-size: @text-size-large;
        text-face-name: @font-water-feature;
        text-name: [name];
        text-wrap-width: 64;
        text-spacing: 2;
        text-placement: interior;
        text-fill: @label-water-feature;
    }
}

#label_ocean_region_10m[zoom>=4] {
    [zoom=4][scalerank<=1],
    [zoom=5][scalerank<=2],
    [zoom=6][scalerank<=3],
    [zoom=7][scalerank<=4],
    [zoom=8][scalerank<=5],
    [zoom=9][scalerank<=6],
    [zoom>=10][scalerank<100] {
//        ::debug {
//            line-color: cyan;
//            line-dasharray: 2, 2;
//        }
        [zoom<=6] { text-size:  @text-size-large; }
        [zoom>=7] { text-size: 22-[scalerank]; }
        text-name: [name];
        text-face-name: @font-water-feature;
        text-fill: @label-water-feature;
        text-placement: line;
        text-spacing: 0;
        text-character-spacing: [arc_length]/[name_length]/6;
    }
//    debug-mode: collision;

}


#label_river_10m   [zoom>=5][featurecla='River'],
#label_river_na_10m[zoom>=5][featurecla='River'], {
    text-name: '';
    text-placement: line;
    [zoom<=4][scalerank<=3],
    [zoom=5][scalerank<=4],
    [zoom=6][scalerank<=5],
    [zoom=7][scalerank<=6],
    [zoom=8][scalerank<=7],
    [zoom=9] {
      text-name: [name];
    }
    text-face-name: @font-water-feature;
    text-fill: @label-water-feature;
    text-halo-fill: @label-water-halo;
    text-halo-radius: @halo-radius-default;
    text-halo-opacity: @label-halo-opacity;
    text-size:  @text-size-regular;
    text-spacing: 0;
    text-character-spacing: 1;
    text-dy: 4;
//    text-simplify: 100;
//    debug-mode: collision;
}


#label_lake_point[zoom>=6] {
//    ::debug {
//        point-ignore-placement: true;
//        point-allow-overlap: true;
//    }
    text-name: '';
    text-face-name: @font-water-feature;

    text-size: @text-size-regular;
    text-fill: @label-water-feature;
    text-halo-fill: @label-water-halo;
    text-halo-radius: @halo-radius-default;
    text-halo-opacity: @label-halo-opacity;
    text-min-distance: 64;

    [pixels>=256][pixels<2048] {
        text-name: [name];
        text-placements: 'E,W';
        text-placement-type: simple;
        text-dx: 4;
        text-dy: 0;
        text-wrap-width: 50;
    }
    [pixels>=2048][pixels<4096],
    {
        text-name: [name];
        text-placements: 'E,W,X';
        text-placement-type: simple;
        text-dx: 6;
        text-dy: 0;
        text-wrap-width: 50;
    }
//    debug-mode: collision;
}

#label_lake_line[zoom>=6] {
//    ::debug {
//        line-color: blue;
//        line-dasharray: 2, 2;
//    }
    text-name: '';
    text-placement: line;
    text-face-name: @font-water-feature;

    text-size: @text-size-regular;
    text-fill: @label-water-feature;

    text-spacing:  0;

    [pixels>=4096] {
        text-name: [name];
        text-character-spacing: 1;
    }
    [pixels>=16384] {
        text-name: [name];
        text-size: 16;
        text-character-spacing: 2;
    }
    [pixels>=65536] {
        text-name: [name];
        text-size: 18;
        text-character-spacing: 4;
    }
    [pixels>=131072] {
        text-name: [name];
        text-size: 20;
        text-character-spacing: 8;
    }
    [pixels>=262144] {
        text-name: [name];
        text-size: 22;
        text-character-spacing: 16;
    }
    [pixels>=1048576] {
        text-name: [name];
        text-size: 24;
        text-character-spacing: 32;
    }
//    debug-mode: collision;
}

