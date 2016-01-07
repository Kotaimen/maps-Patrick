#admin0_boundary_10m,
#admin0_boundary_disputed_10m {
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
//        line-cap: round;
        [zoom<=4] { line-width: 1; }
        [zoom=5] { line-width: 2; }
        [zoom=6] { line-width: 3; }
        [zoom>6] { line-width: 4; }
        [featurecla='Disputed (please verify)'] {
            [zoom<=4] { line-dasharray:5,2; }
            [zoom=5] { line-dasharray:6,2; }
            [zoom=6] { line-dasharray:8,3; }
            [zoom>=7] { line-dasharray:10,3; }
        }
        [featurecla='Breakaway'] {
            [zoom<=4] { line-dasharray: 4,4; }
            [zoom=5] { line-dasharray: 5,5; }
            [zoom=6] { line-dasharray: 6,6; }
            [zoom>=7] { line-dasharray: 8,8; }
        }
        [featurecla='Claim boundary'] {
            line-dasharray: 1,3;
            [zoom>=7] { line-dasharray: 2,4; }
        }
        [featurecla='Indefinite (please verify)'] {
            line-dasharray: 6,1;
        }
    }
}

#admin1_boundary_10m[zoom>=4] {
    [adm0_a3="CAN"],[adm0_a3="USA"] {
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
}

