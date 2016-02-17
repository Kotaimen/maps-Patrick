#nps_boundary {
    [zoom=4][minzoompol<=2],
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
        ::inline1 {
            line-color: @label-park-halo;
            line-join: round;
            line-width: 5; line-offset: -2;
            [zoom>=13] { line-width: 7; line-offset: -4; }
            opacity: 0.5;
        }
        ::outline {
            line-color: @park-boundary;
            line-join: round;
            line-cap: round;
            line-simplify: 2;
            [zoom<=12] { line-width: 2; }
            [zoom>=13] { line-width: 4; }
        }
    }
}

#nps_trail[zoom>=6][zoom<=9] {
    line-clip: true;
    [display_na =~ '.* NST$'] {
        line-color: #662222;
    }
    line-color: #556622;
    [zoom=6] { line-width: 3; }
    [zoom=7] { line-width: 4; }
    [zoom=8] { line-width: 5; }
    [zoom=9] { line-width: 6; }
    line-join: round;
    line-dasharray: 1,1;
//    opacity: 0.5;
}

#nps_building[zoom>=13],
#nps_parking[zoom>=13],
{
    polygon-fill: #888888;
    polygon-opacity: 0.5;
}
