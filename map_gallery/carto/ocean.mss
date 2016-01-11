
#ocean_10m[zoom<=7],
#ocean[zoom>=8] {
    ::outline {
        line-color: @river;
        line-width: 3;
        line-join: round;
        line-cap: round;
    }
    ::fill {
        polygon-fill:@water;
    }
}
