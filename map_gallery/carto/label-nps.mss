
//#label_nps_trail[zoom>=8][zoom<=9] {
//    text-clip: true;
//    text-name: [name];
//    text-face-name: @font-nps;
//    text-placement: line;
//    text-fill: @label-poi;
//    text-halo-radius: @halo-radius-thick;
//    text-halo-fill:  @label-poi-halo;
//    text-size: @text-size-regular;
//    text-halo-opacity: @label-poi-halo-opacity;
//    text-dy: 6;
//    text-smooth: 5;
//}

#label_nps_boundary {
    ::label
    [zoom=5]  [scalerank<=2],
    [zoom=6]  [scalerank<=3],
    [zoom=7]  [scalerank<=4],
    [zoom=8]  [scalerank<=5],
    [zoom=9]  [scalerank<=6],
    {
        text-name: [name_abbr];
        text-face-name: @font-nps;
        text-placement: interior;
        text-fill: @label-park;
        text-halo-radius: @halo-radius-thick;
        text-halo-fill:  @label-park-halo;
        text-halo-opacity: @label-park-halo-opacity;
        text-size: @text-size-regular;
        text-wrap-width: 46;
    }
    ::label
    [zoom=10] [scalerank<=7],
    [zoom=11] [scalerank<=8],
    [zoom=12] [scalerank<=9],
    [zoom=13] [scalerank<=10],
    [zoom=14] [scalerank<=11],
    [zoom>=15][scalerank<=100],
    {
        text-name: [name];
        text-face-name: @font-nps;
        text-placement: interior;
        text-fill: @label-park;
        text-halo-radius: @halo-radius-thick;
        text-halo-fill:  @label-park-halo;
        text-halo-opacity: @label-park-halo-opacity;
        text-size: @text-size-large;
        text-wrap-width: 66;
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
        shield-face-name: @font-nps;

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
