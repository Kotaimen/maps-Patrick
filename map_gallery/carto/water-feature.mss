

#river_10m[zoom<=8],
#river_na_10m[zoom<=8] {
    [zoom<=4][scalerank<=4],
    [zoom=5][scalerank<=5],
    [zoom=6][scalerank<=6],
    [zoom=7][scalerank<=7],
    [zoom=8][scalerank<=8],
    [zoom=9],
     {
        line-color: @river;
        line-join: round;
        [zoom<=8] { line-width: 0.5; }
        [zoom>=9] { line-width: 1; }
    }
}

#waterway_gen1[zoom>=9][zoom<=10],
#waterway_gen0[zoom>=11][zoom<=12],
#waterway[zoom>=13] {
    [type='river'],
    [type='canal'] {
        line-color: @river;
        line-join: round;
        [zoom=9] { line-width: 0.4; }
        [zoom=10]{ line-width: 0.6; }
        [zoom=11]{ line-width: 0.8; }
        [zoom=12]{ line-width: 1; }
        [zoom=13]{ line-width: 1.5; }
        [zoom=14]{ line-width: 1.5; }
        [zoom=15]{ line-width: 2; }
        [zoom=16]{ line-width: 3; }
        [zoom>=17]{ line-width: 4; }
    }
    [type='stream'] {
        line-color: @river;
        line-join: round;
        [zoom<=12]{ line-width: 0.2; }
        [zoom=13]{ line-width: 0.4; }
        [zoom=14]{ line-width: 0.4; }
        [zoom=15]{ line-width: 0.6; }
        [zoom=16]{ line-width: 0.8; }
        [zoom>=17]{ line-width: 1; }
    }
    [type='ditch'],
    [type='drain'] {
    line-color: @river;
    line-join: round;
        [zoom=15]{ line-width: 0.1; }
        [zoom=16]{ line-width: 0.3; }
        [zoom>=17]{ line-width: 0.5; }
    }
}

#lake_10m[zoom<=8] {
    [zoom<=4][scalerank<=4],
    [zoom=5][scalerank<=5],
    [zoom=6][scalerank<=6],
    [zoom=7][scalerank<=7],
    [zoom=8][scalerank<=8],
    [zoom>=9] {
        ::outline {
            line-color: @river;
            line-width: 2;
            line-join: round;
        }
        ::fill {
            polygon-fill: @water;
        }
    }
}

#waterbody_gen1[zoom>=9][zoom<=10],
#waterbody_gen0[zoom>=11][zoom<=12],
#waterbody[zoom>=13] {

    ::outline {
        line-color: @river;
        [zoom<=10] { line-width: 1; }
        [zoom>=11] { line-width: 2; }
        line-join: round;
    }
    ::fill {
        polygon-fill: @water;
    }

}
