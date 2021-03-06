#nps_boundary {
    [zoom=5] [minzoompol<=2],
    [zoom=6] [minzoompol<=3],
    [zoom=7] [minzoompol<=4],
    [zoom=8] [minzoompol<=5],
    [zoom=9] [minzoompol<=6],
    [zoom=10][minzoompol<=7],
    [zoom=11][minzoompol<=8],
    [zoom=12][minzoompol<=9],
    [zoom=13][minzoompol<=10],
    [zoom=14][minzoompol<=11],
    [zoom>=15][minzoompol<=100], {
        inline/line-color: @label-park-halo;
        inline/line-join: round;
        inline/line-width: 4;
        inline/line-offset: -2;
        inline/line-opacity: 0.33;
        outline/line-color: @park-boundary;
        outline/line-join: round;
        outline/line-cap: round;
        outline/line-simplify: 2;
        outline/line-width: 2;
        inline/line-opacity: 0.67;
    }
}

#nps_dot {
    ::dot
    [zoom=4] [scalerank>1],
    [zoom=5] [scalerank>2],
    [zoom=6] [scalerank>3],
    [zoom=7] [scalerank>4],
    [zoom=8] [scalerank>5],
    [zoom=9] [scalerank>6],
    [zoom=10][scalerank>7],
    [zoom=11][scalerank>8],
    [zoom=12][scalerank>9],
    [zoom=13][scalerank>10],
    [zoom=14][scalerank>11],
    {
        [zoom=4] { marker-transform: scale(0.5, 0.5); }
        [zoom=5] { marker-transform: scale(0.7, 0.7); }
        marker-file: url('res/Assets/marker/park-circle.svg');
        marker-ignore-placement: true;
    }
}

//#nps_trail[zoom>=5][zoom<=9] {
//
//    fill/line-color: @label-halo-default;
//    fill/line-opacity: 0.5;
//
//    [zoom=5] { fill/line-width: 3+2; }
//    [zoom=6] { fill/line-width: 4+2; }
//    [zoom=7] { fill/line-width: 5+2; }
//    [zoom=8] { fill/line-width: 6+2; }
//    [zoom=9] { fill/line-width: 7+2; }
//
//
//    [display_na='Appalachian NST'] { line-color: #008877; }
//    [display_na='Arizona NST'] { line-color: #117788; }
//    [display_na='California NHT'] { line-color: #aa2255; }
//    [display_na='Continental Divide NST'] { line-color: #008877; }
//    [display_na='Juan Bautista De Anza NHT'] { line-color: #995544; }
//    [display_na='Florida NST'] { line-color: #008877; }
//    [display_na='Ice Age NST'] { line-color: #448811; }
//    [display_na='Captain John Smith Chesapeake NHT'] { line-color: #008877; }
//    [display_na='Lewis and Clark NHT'] { line-color: #dd6644; }
//    [display_na='Mormon Pioneer NHT'] { line-color: #ddbb22; }
//    [display_na='Natchez Trace NST'] { line-color: #008877; }
//    [display_na='New England NST'] { line-color: #117788; }
//    [display_na='Nez Perce NHT'] { line-color: #4488bb; }
//    [display_na='North Country NST'] { line-color: #117788; }
//    [display_na='Old Spanish NHT'] { line-color: #dd6644; }
//    [display_na='Oregon NHT'] { line-color: #995544; }
//    [display_na='Overmountain Victory NHT'] { line-color: #aa2255; }
//    [display_na='Pacific Crest NST'] { line-color: #008877; }
//    [display_na='Pacific Northwest NST'] { line-color: #448811; }
//    [display_na='Pony Express NHT'] { line-color: #4488bb; }
//    [display_na='Santa Fe NHT'] { line-color: #994499; }
//    [display_na='Selma to Montgomery NHT'] { line-color: #994499; }
//    [display_na='Star Spangled Banner NST'] { line-color: #4488bb; }
//    [display_na='El Camino Real De Tierra Adentro NHT'] { line-color: #aa2255; }
//    [display_na='Trail of Tears NHT'] { line-color: #995544; }
//    [display_na='Washington Rochambeau Revolutionary Route NHT'] { line-color: #aa2255; }
//    [display_na='El Camino Real De Los Tejas NHT'] { line-color: #dd6644; }
//
//    [zoom=5] { line-width: 3; }
//    [zoom=6] { line-width: 4; }
//    [zoom=7] { line-width: 5; }
//    [zoom=8] { line-width: 6; }
//    [zoom=9] { line-width: 7; }
//
//    line-clip: true;
//    line-join: round;
//    line-dasharray: 2,1;
//}

#nps_building[zoom>=13],
#nps_parking[zoom>=13],
{
    polygon-fill: #888888;
    polygon-opacity: 0.5;
}
