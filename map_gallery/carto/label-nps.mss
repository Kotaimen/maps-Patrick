
//#nps_trail[zoom>=6][zoom<=9] {
//    ::line {
//        line-clip: true;
//        [display_na = '.* NHT$'] {
//            line-color: #662222;
//        }
//        line-color: #556622;
//        [zoom=6] { line-width: 3; }
//        [zoom=7] { line-width: 4; }
//        [zoom=8] { line-width: 5; }
//        [zoom=9] { line-width: 6; }
//        line-join: round;
//        line-dasharray: 1,1;
//        line-cap: round;
//        opacity: 0.5;
//    }
//    ::label {
//        text-clip: true;
//        text-name: [name];
//        text-face-name: @font-poi;
//        text-placement: line;
//        [name =~ '.* Historic Trail$'] {
//            text-fill: #662222;
//        }
//        text-fill: #552244;
//        text-halo-radius: @halo-radius-default;
//        text-halo-fill:  @label-poi-halo;
//        text-size: @text-size-regular;
//        text-halo-opacity: @label-poi-halo-opacity;
//        text-dy: 6;
//    }
//}


#label_nps_boundary {
    [zoom=4][scalerank<=2],
    [zoom=5] [scalerank<=3],
    [zoom=6] [scalerank<=4],
    [zoom=7] [scalerank<=5],
    [zoom=8] [scalerank<=6],
    [zoom=9] [scalerank<=7],
    [zoom=10][scalerank<=8],
    [zoom=11][scalerank<=9],
    [zoom=12][scalerank<=10],
    [zoom=13][scalerank<=11],
    [zoom=14][scalerank<=12],
    [zoom>=15]
    {
        text-name: '';
        text-face-name: @font-poi;
        text-placement: interior;
        text-fill: @label-park;
        text-halo-radius: @halo-radius-thick;
        text-halo-fill:  @label-park-halo;
        text-halo-opacity: @label-park-halo-opacity;
        [zoom<=9] {
            text-name: [name_abbr];
            text-size: @text-size-regular;
            text-wrap-width: 46;
        }
        [zoom>=10][zoom<=12] {
            text-size: @text-size-large;
            text-wrap-width: 66;
            text-name: [name];
        }
        [zoom>=13] {
            text-size: @text-size-xlarge;
            text-wrap-width: 88;
            text-name: [name];
        }
    }
}

#label_nps_poi[zoom>=12] {
    ::shield
    [zoom=12] [scalerank<=12],
    [zoom=13] [scalerank<=13],
    [zoom=14] [scalerank<=14],
    [zoom>=15],
    {
        shield-file: url('res/Stage/nps/[pictograph].png');
        shield-transform: scale(0.5, 0.5);

        shield-name: '';
        [zoom>=13] { shield-name:[name]; }

        shield-size: @text-size-regular;
        shield-text-dx: 14;
        shield-text-dy: 14;

        shield-unlock-image: true;
        shield-face-name: @font-poi;

        shield-placement-type: simple;
        shield-placement: point;
        shield-fill: @label-poi;
        shield-halo-radius: @halo-radius-default;
        shield-halo-fill:  @label-poi-halo;
        shield-halo-opacity: @label-poi-halo-opacity;
        shield-margin: 2;
        shield-placements: 'E,W';
        shield-wrap-width: 66;
        shield-repeat-distance: 64;

    }
}
