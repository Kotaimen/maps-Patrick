#label_ocean_10m[zoom>=4] {
    [zoom=4][scalerank<=1],
    [zoom=5][scalerank<=2],
    [zoom=6][scalerank<=3],
    [zoom=7][scalerank<=4],
    [zoom=8][scalerank<=5],
    [zoom=9][scalerank<=6],
    [zoom>=10][scalerank<100], {
        [featurecla='ocean'] { text-size: 20; }
        text-size: 16;
        text-face-name: @font-water-feature;
        text-name: [name];
        text-wrap-width: 96;
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
        [zoom<=6] { text-size: 16; }
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