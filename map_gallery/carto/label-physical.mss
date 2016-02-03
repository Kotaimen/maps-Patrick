
#label_geo_region_10m[zoom>=4][zoom<=10] {
    [zoom=4][scalerank<=3],
    [zoom=5][scalerank<=4],
    [zoom=6][scalerank<=5],
    [zoom=7][scalerank<=6],
    [zoom=8][scalerank<=7],
    [zoom=9][scalerank<=8],
    [zoom>=10][scalerank<100]
    {
//        ::debug {
//            line-color: orange;
//            line-dasharray: 2, 2;
//        }
        [zoom<=4] {
            text-size: 15-[scalerank];
            [scalerank=3] { text-character-spacing: 0; }
            text-character-spacing: [arc_length]/[name_length]/6;
        }
        [zoom>=5][zoom<=6] {
            text-size: 17-[scalerank];
            text-character-spacing: [arc_length]/[name_length]/6;
        }
        [zoom>=7] {
            text-size: 23-[scalerank];
            text-character-spacing: [arc_length]/[name_length]/5;
        }
        text-name: [name];
        text-face-name: @font-georegion;
        text-fill: @label-georegion;
        text-halo-radius: @halo-radius-thick;
        text-halo-fill:  @label-georegion-halo;
        text-halo-opacity: @label-georegion-halo-opacity;
        text-placement: line;
        text-margin: 0;

//        text-character-spacing: [arc_length]/[name_length]/5;
//        debug-mode: collision;
    }

}

#label_elev[zoom>=5] {
    [zoom<=6][rank<=0],
    [zoom>=7][zoom<=8][rank<=10],
    [zoom>=9][zoom<=10][rank<=20],
    [zoom=11][rank<=100],
    [zoom=12][rank<=110],
    [zoom=13][rank<=120],
    [zoom=14][rank<=130],
    [zoom>=15],
    {
        shield-size: 14;
        shield-text-dx: 6;
        shield-text-dy: 4;

        shield-file: url('res/Assets/elev-circle-small.svg');

        shield-unlock-image: true;
        shield-face-name: @font-physical;

        shield-placement-type: simple;
        shield-placement: point;
        shield-fill: @label-physical;
        shield-halo-radius: @halo-radius-thick;
        shield-halo-fill:  @label-physical-halo;
        shield-halo-opacity: @label-physical-halo-opacity;
        shield-margin: 4;
        shield-placements: 'E,W';

        [zoom<=8] {
            shield-name: [name_abbr];
            shield-wrap-width: 66;
        }
        [zoom>=9][zoom<=11] {
            shield-name: [name_abbr]+'\n'+[elev_in_ft]+' ft';
            shield-wrap-width: 66;
        }
        [zoom>=12] {
            shield-size: 16;
            shield-name: [name]+'\n'+[elev_in_ft]+' ft';
            shield-wrap-width: 128;
        }
    }
//    debug-mode: collision;
}
