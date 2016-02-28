#admin0_boundary {
    ::casing {
        line-width: 0;
        line-color: @boundary-casing;
        line-opacity: @boundary-opacity;
        image-filters: agg-stack-blur(4, 4);
        [zoom<=4] { line-width: 2; }
        [zoom=5] { line-width: 4; }
        [zoom=6] { line-width: 5; }
        [zoom>=7] { line-width: 6; }
    }
    ::body {
        line-width: 0;
        line-color: @boundary-line;
        line-join: round;
        [zoom<=4] { line-width: 1; }
        [zoom=5] { line-width: 2; }
        [zoom=6] { line-width: 3; }
        [zoom>6] { line-width: 4; }
    }
}

#admin1_boundary[zoom>=4] {
    ::casing {
        line-width: 0;
        line-color: @boundary-casing;
        line-opacity: @boundary-opacity;
        image-filters: agg-stack-blur(4, 4);
        [zoom<=4] { line-width: 2; }
        [zoom=5] { line-width: 3; }
        [zoom=6] { line-width: 3; }
        [zoom>=7] { line-width: 4; }
    }
    ::body {
        line-width: 0;
        line-color: @boundary-line;
        line-join: round;
        [zoom<=4] { line-width: 0.5; }
        [zoom=5] { line-width: 1; }
        [zoom=6] { line-width: 1.5; }
        [zoom>=7] { line-width: 2; }
    }
}

