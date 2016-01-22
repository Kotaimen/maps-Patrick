#label_ocean_10m {
    [zoom<=4][scalerank<=0],
    [zoom=5][scalerank<=1],
    [zoom=6][scalerank<=2],
    [zoom=7][scalerank<=3],
    [zoom=8][scalerank<=4],
    [zoom>=9][scalerank<100], {
        [featurecla='ocean'] { text-size: 14; }
        text-size: 12;
        text-face-name: @font-water-feature;
        text-name: [name];
        text-wrap-width: 50;
        text-placement: interior;
        text-fill: @label-water-feature;
    }
}

#label_geo_region_10m[zoom>=5][zoom<=10] {
    [zoom=5][scalerank<=3],
    [zoom=6][scalerank<=4],
    [zoom=7][scalerank<=5],
    [zoom=8][scalerank<=6],
    [zoom=9][scalerank<=7],
    [zoom>=10][scalerank<100] {
//        ::debug {
//            line-color: orange;
//            line-dasharray: 2, 2;
//        }
        text-size: 24-[scalerank];
        text-name: [name];
        text-face-name: @font-georegion;
        text-fill: @label-georegion;
        text-halo-radius: @halo-radius-thick;
        text-halo-fill:  @label-georegion-halo;
        text-halo-opacity: @label-georegion-halo-opacity;
        text-placement: line;
        text-spacing: 0;
        text-character-spacing: [arc_length]/[name_length]/5;
//        text-font-feature-settings: 'smcp on';
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
    text-size: 12;
    text-spacing: 0;
    text-character-spacing: 1;
    text-dy: 4;
//    text-simplify: 100;
//    debug-mode: collision;
}

#label_elev_10m[zoom>=4][zoom<=10][region='North America'] {
    [zoom<=4][scalerank<=4],
    [zoom=5][scalerank<=5],
    [zoom=6][scalerank<=6],
    [zoom=7][scalerank<=7],
    [zoom=8][scalerank<=8],
    [zoom>=9], {
        shield-size: 12;
        shield-file: url('res/Assets/elev-circle.svg');
        shield-unlock-image: true;
        shield-face-name: @font-physical;
        shield-name: [name];
//        shield-wrap-width: 50;
        shield-placement-type: simple;
        shield-placement: point;
        shield-text-dx: 4;
        shield-text-dy: 3;
        shield-fill: @label-physical;
        shield-halo-radius: @halo-radius-default;
        shield-halo-fill:  @label-physical-halo;
        shield-halo-opacity: @label-physical-halo-opacity;
        shield-margin: 2;
        shield-placements: 'E,W';
    }
//    debug-mode: collision;
}

#label_elev[zoom>=11] {
    [zoom<=12] {
        shield-size: 12;
        shield-text-dx: 4;
        shield-text-dy: 3;
        shield-wrap-width: 50;
    }
    [zoom>=13] {
        shield-size: 14;
        shield-text-dx: 6;
        shield-text-dy: 4;
        shield-wrap-width: 66;
        shield-file: url('res/Assets/elev-circle2.svg');
    }

    shield-file: url('res/Assets/elev-circle.svg');
    shield-unlock-image: true;
    shield-face-name: @font-physical;
    shield-name: [name]+'\n'+[ele];
    shield-placement-type: simple;
    shield-placement: point;
    shield-fill: @label-physical;
    shield-halo-radius: @halo-radius-default;
    shield-halo-fill:  @label-physical-halo;
    shield-halo-opacity: @label-physical-halo-opacity;
    shield-margin: 16;
    shield-placements: 'E,W';

//    debug-mode: collision;
}

#label_lake_point[zoom>=5] {
//    ::debug {
//        point-ignore-placement: true;
//        point-allow-overlap: true;
//    }
    text-name: '';
    text-face-name: @font-water-feature;

    text-size: 12;
    text-fill: @label-water-feature;
    text-halo-fill: @label-water-halo;
    text-halo-radius: @halo-radius-default;
    text-halo-opacity: @label-halo-opacity;
    text-min-distance: 64;

    [pixels>=256][pixels<2048] {
        text-name: [name];
        text-placements: 'E,W';
        text-placement-type: simple;
        text-dx: 3;
        text-dy: 0;
        text-wrap-width: 33;
    }
    [pixels>=2048][pixels<4096],
    {
        text-name: [name];
        text-size: 14;
        text-placements: 'E,W,X';
        text-placement-type: simple;
        text-dx: 4;
        text-dy: 0;
        text-wrap-width: 33;
    }
//    debug-mode: collision;
}

#label_lake_line {
//    ::debug {
//        line-color: blue;
//        line-dasharray: 2, 2;
//    }
    text-name: '';
    text-placement: line;
    text-face-name: @font-water-feature;

    text-size: 14;
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

