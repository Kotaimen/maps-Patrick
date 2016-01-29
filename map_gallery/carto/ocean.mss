
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

#bathymetry_10m[zoom<=7] {
    ::fill {
        polygon-fill: @river;
        polygon-opacity: 0.08;
        polygon-comp-op: multiply;
    }
}
