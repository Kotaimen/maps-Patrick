
#ocean_10m[zoom<=8],
#ocean[zoom>=9] {
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
