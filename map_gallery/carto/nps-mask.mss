#nps_boundary[zoom>=10] {
    [zoom<=4][minzoompol<=2],
    [zoom=5] [minzoompol<=3],
    [zoom=6] [minzoompol<=4],
    [zoom=7] [minzoompol<=5],
    [zoom=8] [minzoompol<=6],
    [zoom=9] [minzoompol<=7],
    [zoom=10][minzoompol<=8],
    [zoom=11][minzoompol<=9],
    [zoom=12][minzoompol<=10],
    [zoom=13][minzoompol<=11],
    [zoom=14][minzoompol<=12],
    [zoom>=15]
    {
        [zoom=4] { polygon-opacity: 0.2; }
        [zoom=5] { polygon-opacity: 0.3; }
        [zoom=6] { polygon-opacity: 0.4; }
        [zoom=7] { polygon-opacity: 0.5; }
        [zoom=8] { polygon-opacity: 0.5; }
        [zoom=9] { polygon-opacity: 0.6; }
        [zoom=10] { polygon-opacity: 0.6; }
        [zoom=11] { polygon-opacity: 0.7; }
        [zoom=12] { polygon-opacity: 0.8; }
        [zoom>=13] { polygon-opacity: 1; }
        polygon-fill: black;

        image-filters: agg-stack-blur(2, 2);
        image-filters-inflate: true;
    }
}

Map {
    background-color: white;
}
