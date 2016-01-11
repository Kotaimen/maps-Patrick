//
// Road attachments ordering
//
#road_tunnel,
#road_tunnel_gen0,
{
    ::casing { opacity: 0.4; }
    ::inline { opacity: 0.6; }
    ::rail { opacity: 0.5; }
}


#road, #road_gen0
{
    ::casing { opacity: 1; }
    ::inline { opacity: 1; }
    ::rail { opacity: 1; }
    ::marker { }
}

//
// Road Width
//

// major       medium         normal
@r9_maj:  1.5; @r9_med:  1;   @r9_norm:  0.5;
@r10_maj: 1.5; @r10_med: 1;   @r10_norm: 0.5;
@r11_maj: 2;   @r11_med: 1;   @r11_norm: 1;
@r12_maj: 2;   @r12_med: 1.5; @r12_norm: 1;
@r13_maj: 3;   @r13_med: 2;   @r13_norm: 2;
@r14_maj: 4;   @r14_med: 3;   @r14_norm: 3;
@r15_maj: 6;   @r15_med: 5;   @r15_norm: 4;
@r16_maj: 8;   @r16_med: 6;   @r16_norm: 4;
@r17_maj: 14;  @r17_med: 8;   @r17_norm: 6;
@r18_maj: 28;  @r18_med: 14;  @r18_norm: 8;
@r19_maj: 48;  @r19_med: 28;  @r19_norm: 14;
@r20_maj: 64;  @r20_med: 56;  @r20_norm: 28;

// minor       path            casing
@r9_min:  0.1; @r9_path:  0;   @r9_cas:  2;
@r10_min: 0.3; @r10_path: 0.1; @r10_cas: 2;
@r11_min: 0.5; @r11_path: 0.3; @r11_cas: 2;
@r12_min: 1;   @r12_path: 0.5; @r12_cas: 2;
@r13_min: 1.5; @r13_path: 1.5; @r13_cas: 2;
@r14_min: 1.5; @r14_path: 1.5; @r14_cas: 2;
@r15_min: 3;   @r15_path: 2;   @r15_cas: 2;
@r16_min: 3;   @r16_path: 2;   @r16_cas: 3;
@r17_min: 4;   @r17_path: 3;   @r17_cas: 3;
@r18_min: 6;   @r18_path: 4;   @r18_cas: 3;
@r19_min: 8;   @r19_path: 6;   @r19_cas: 4;
@r20_min: 14;  @r20_path: 8;   @r20_cas: 4;

//
// Road overview
//

#road_gen1[zoom>=6][zoom<=8] {

    [feature='motorway'], [feature='trunk'], {
        ::casing {
            line-color: @motorway-casing;
            line-join: round;
            line-cap: round;
            [zoom=5] { line-width: 1; }
            [zoom=6] { line-width: 2; }
            [zoom=7] { line-width: 3; }
            [zoom=8] { line-width: 3; }
        }

        ::inline {
            line-color: @motorway-fill;
            line-join: round;
            line-cap: round;
            [zoom=5] { line-width: 0.5; }
            [zoom=6] { line-width: 1; }
            [zoom=7] { line-width: 1; }
            [zoom=8] { line-width: 1; }
        }

    }
    [feature='primary'], [feature='secondary'], {
        ::casing {
            line-color: @primary-casing;
            line-join: round;
            line-cap: round;
            [zoom=5] { line-width: 0; }
            [zoom=6] { line-width: 0; }
            [zoom=7] { line-width: 0; }
            [zoom=8] { line-width: 1; }
        }

        ::inline {
            line-color: @primary-fill;
            line-join: round;
            line-cap: round;
            [zoom=5] { line-width: 0; }
            [zoom=6] { line-width: 0; }
            [zoom=7] { line-width: 0; }
            [zoom=8] { line-width: 0.5; }
        }

    }

    [feature='ferry'] {
        ::casing {
            line-width: 0;
        }
        ::inline {
            line-color: @ferry-line;
            line-join: round;
            line-dasharray: @road-dash;
        }
    }

}

//
// Detailed roads
//
#road_tunnel_gen0[osm_class='highway'][zoom>=9][zoom<=12],
#road_gen0       [osm_class='highway'][zoom>=9][zoom<=12],
#road_tunnel     [osm_class='highway'][zoom>=13],
#road            [osm_class='highway'][zoom>=13], {

    [feature='motorway'], [feature='trunk'] {
        ::casing {
            line-color: @motorway-casing;
            line-join: round;
            [is_bridge=0] { line-cap: round; }
            [is_link=1] {
                // don’t need thin links since road are already thin zoom<=lv10
                [zoom=9]  { line-width: @r9_maj + @r9_cas; }
                [zoom=10] { line-width: @r10_maj/2 + @r10_cas; }
                [zoom=11] { line-width: @r11_maj/2 + @r11_cas; }
                [zoom=12] { line-width: @r12_maj/2 + @r12_cas; }
                [zoom=13] { line-width: @r13_maj/2 + @r13_cas; }
                [zoom=14] { line-width: @r14_maj/2 + @r14_cas; }
                [zoom=15] { line-width: @r15_maj/2 + @r15_cas; }
                [zoom=16] { line-width: @r16_maj/2 + @r16_cas; }
                [zoom=17] { line-width: @r17_maj/2 + @r17_cas; }
                [zoom=18] { line-width: @r18_maj/2 + @r18_cas; }
                [zoom=19] { line-width: @r19_maj/2 + @r19_cas; }
                [zoom>=20]{ line-width: @r20_maj/2 + @r20_cas; }
            }
            [is_link=0] {
                [zoom=9]  { line-width: @r9_maj + @r9_cas; }
                [zoom=10] { line-width: @r10_maj + @r10_cas; }
                [zoom=11] { line-width: @r11_maj + @r11_cas; }
                [zoom=12] { line-width: @r12_maj + @r12_cas; }
                [zoom=13] { line-width: @r13_maj + @r13_cas; }
                [zoom=14] { line-width: @r14_maj + @r14_cas*2; }
                [zoom=15] { line-width: @r15_maj + @r15_cas*2; }
                [zoom=16] { line-width: @r16_maj + @r16_cas*2; }
                [zoom=17] { line-width: @r17_maj + @r17_cas*2; }
                [zoom=18] { line-width: @r18_maj + @r18_cas*2; }
                [zoom=19] { line-width: @r19_maj + @r19_cas*2; }
                [zoom>=20]{ line-width: @r20_maj + @r20_cas*2; }
            }
        }
        ::inline {
            line-join:round;
            line-cap: round;
            line-color: @motorway-fill;
            [is_link=1] {
                [zoom>=14]{ line-color: @motorway-link; }
                [zoom=9]  { line-width: @r9_maj;  }
                [zoom=10] { line-width: @r10_maj/2;}
                [zoom=11] { line-width: @r11_maj/2; }
                [zoom=12] { line-width: @r12_maj/2; }
                [zoom=13] { line-width: @r13_maj/2; }
                [zoom=14] { line-width: @r14_maj/2; }
                [zoom=15] { line-width: @r15_maj/2; }
                [zoom=16] { line-width: @r16_maj/2; }
                [zoom=17] { line-width: @r17_maj/2; }
                [zoom=18] { line-width: @r18_maj/2; }
                [zoom=19] { line-width: @r19_maj/2; }
                [zoom>=20]{ line-width: @r20_maj/2; }
            }
            [is_link=0] {
                [zoom=9]  { line-width: @r9_maj;  }
                [zoom=10] { line-width: @r10_maj; }
                [zoom=11] { line-width: @r11_maj; }
                [zoom=12] { line-width: @r12_maj; }
                [zoom=13] { line-width: @r13_maj; }
                [zoom=14] { line-width: @r14_maj; }
                [zoom=15] { line-width: @r15_maj; }
                [zoom=16] { line-width: @r16_maj; }
                [zoom=17] { line-width: @r17_maj; }
                [zoom=18] { line-width: @r18_maj; }
                [zoom=19] { line-width: @r19_maj; }
                [zoom>=20]{ line-width: @r20_maj; }
            }
        }
    }

    [feature='primary'] {
        ::casing {
            line-color: @primary-casing;
            line-join: round;
            [is_bridge=0] { line-cap: round; }
            [is_link=1] {
                [zoom=9]  { line-width: @r9_med/2 + @r9_cas; }
                [zoom=10] { line-width: @r10_med/2 + @r10_cas; }
                [zoom=11] { line-width: @r11_med/2 + @r11_cas; }
                [zoom=12] { line-width: @r12_med/2 + @r12_cas; }
                [zoom=13] { line-width: @r13_med/2 + @r13_cas; }
                [zoom=14] { line-width: @r14_med/2 + @r14_cas; }
                [zoom=15] { line-width: @r15_med/2 + @r15_cas; }
                [zoom=16] { line-width: @r16_med/2 + @r16_cas; }
                [zoom=17] { line-width: @r17_med/2 + @r17_cas; }
                [zoom=18] { line-width: @r18_med/2 + @r18_cas; }
                [zoom=19] { line-width: @r19_med/2 + @r19_cas; }
                [zoom>=20]{ line-width: @r20_med/2 + @r20_cas; }
            }
            [is_link=0] {
                [zoom=9]  { line-width: @r9_med + @r9_cas; }
                [zoom=10] { line-width: @r10_med + @r10_cas; }
                [zoom=11] { line-width: @r11_med + @r11_cas; }
                [zoom=12] { line-width: @r12_med + @r12_cas; }
                [zoom=13] { line-width: @r13_med + @r13_cas; }
                [zoom=14] { line-width: @r14_med + @r14_cas; }
                [zoom=15] { line-width: @r15_med + @r15_cas; }
                [zoom=16] { line-width: @r16_med + @r16_cas; }
                [zoom=17] { line-width: @r17_med + @r17_cas; }
                [zoom=18] { line-width: @r18_med + @r18_cas; }
                [zoom=19] { line-width: @r19_med + @r19_cas; }
                [zoom>=20]{ line-width: @r20_med + @r20_cas; }
            }
        }
        ::inline {
            line-color: @primary-fill;
            line-join:round;
            line-cap: round;
            [is_link=1] {
                [zoom=9]  { line-width: @r9_med; }
                [zoom=10] { line-width: @r10_med/2; }
                [zoom=11] { line-width: @r11_med/2; }
                [zoom=12] { line-width: @r12_med/2; }
                [zoom=13] { line-width: @r13_med/2; }
                [zoom=14] { line-width: @r14_med/2; }
                [zoom=15] { line-width: @r15_med/2; }
                [zoom=16] { line-width: @r16_med/2; }
                [zoom=17] { line-width: @r17_med/2; }
                [zoom=18] { line-width: @r18_med/2; }
                [zoom=19] { line-width: @r19_med/2; }
                [zoom>=20]{ line-width: @r20_med/2; }
            }
            [is_link=0] {
                [zoom=9]  { line-width: @r9_med;}
                [zoom=10] { line-width: @r10_med; }
                [zoom=11] { line-width: @r11_med; }
                [zoom=12] { line-width: @r12_med; }
                [zoom=13] { line-width: @r13_med; }
                [zoom=14] { line-width: @r14_med; }
                [zoom=15] { line-width: @r15_med; }
                [zoom=16] { line-width: @r16_med; }
                [zoom=17] { line-width: @r17_med; }
                [zoom=18] { line-width: @r18_med; }
                [zoom=19] { line-width: @r19_med; }
                [zoom>=20]{ line-width: @r20_med; }
            }
        }
    }

    [feature='secondary']{
        ::casing {
            line-color: @secondary-casing;
            line-join: round;
            [is_bridge=0] { line-cap: round; }
            [zoom=9]  { line-width: 0; }
            [zoom=10] { line-width: 0; }
            [zoom=11] { line-width: @r11_norm + @r11_cas; }
            [zoom=12] { line-width: @r12_norm + @r12_cas; }
            [zoom=13] { line-width: @r13_norm + @r13_cas; }
            [zoom=14] { line-width: @r14_norm + @r14_cas; }
            [zoom=15] { line-width: @r15_norm + @r15_cas; }
            [zoom=16] { line-width: @r16_norm + @r16_cas; }
            [zoom=17] { line-width: @r17_norm + @r17_cas; }
            [zoom=18] { line-width: @r18_norm + @r18_cas; }
            [zoom=19] { line-width: @r19_norm + @r19_cas; }
            [zoom>=20]{ line-width: @r20_norm + @r20_cas; }
        }
        ::inline[zoom>=11] {
            line-color: @secondary-fill;
            line-join:round;
            line-cap: round;
            [zoom=9]  { line-width: 0; }
            [zoom=10] { line-width: 0; }
            [zoom=11] { line-width: @r11_norm; }
            [zoom=12] { line-width: @r12_norm; }
            [zoom=13] { line-width: @r13_norm; }
            [zoom=14] { line-width: @r14_norm; }
            [zoom=15] { line-width: @r15_norm; }
            [zoom=16] { line-width: @r16_norm; }
            [zoom=17] { line-width: @r17_norm; }
            [zoom=18] { line-width: @r18_norm; }
            [zoom=19] { line-width: @r19_norm; }
            [zoom>=20]{ line-width: @r20_norm; }
        }
    }

    [feature='minor'] {
        ::casing[zoom>=13] {
            line-color: @minor-casing;
            line-join: round;
            [is_bridge=0] { line-cap: round; }
            [zoom=12] { line-width: 0; }
            [zoom=13] { line-width: @r13_min + @r13_cas; }
            [zoom=14] { line-width: @r14_min + @r14_cas; }
            [zoom=15] { line-width: @r15_min + @r15_cas; }
            [zoom=16] { line-width: @r16_min + @r16_cas; }
            [zoom=17] { line-width: @r17_min + @r17_cas; }
            [zoom=18] { line-width: @r18_min + @r18_cas; }
            [zoom=19] { line-width: @r19_min + @r19_cas; }
            [zoom>=20]{ line-width: @r20_min + @r20_cas; }
        }
        ::inline[zoom>=12] {
            line-color: @minor-fill;
            line-join:round;
            line-cap: round;
            [zoom=12] { line-width: @r12_min; line-color: @minor-line; }
            [zoom=13] { line-width: @r13_min; }
            [zoom=14] { line-width: @r14_min; }
            [zoom=15] { line-width: @r15_min; }
            [zoom=16] { line-width: @r16_min; }
            [zoom=17] { line-width: @r17_min; }
            [zoom=18] { line-width: @r18_min; }
            [zoom=19] { line-width: @r19_min; }
            [zoom>=20]{ line-width: @r20_min; }
        }
    }

    [feature='path'] {
        ::casing[zoom>=14] {
            line-color: @path-casing;
            line-join: round;
            [is_bridge=0] { line-cap: round; }
            [zoom=14] { line-width: @r14_path + @r14_cas; }
            [zoom=15] { line-width: @r15_path + @r15_cas; }
            [zoom=16] { line-width: @r16_path + @r16_cas; }
            [zoom=17] { line-width: @r17_path + @r17_cas; }
            [zoom=18] { line-width: @r18_path + @r18_cas; }
            [zoom=19] { line-width: @r19_path + @r19_cas; }
            [zoom>=20]{ line-width: @r20_path + @r20_cas; }
        }
        ::inline[zoom>=14] {
            line-color: @path-fill;
            line-join:round;
            line-cap: round;
            [zoom=14] { line-width: @r14_path; }
            [zoom=15] { line-width: @r15_path; }
            [zoom=16] { line-width: @r16_path; }
            [zoom=17] { line-width: @r17_path; }
            [zoom=18] { line-width: @r18_path; }
            [zoom=19] { line-width: @r19_path; }
            [zoom>=20]{ line-width: @r20_path; }
        }
    }

    [feature='pedestrian']    {
        ::casing[zoom>=15] {
            line-color: @trail-casing;
            line-join: round;
            [is_bridge=0] { line-cap: round; }
            [zoom=14] { line-width: 0; }
            [zoom=15] { line-width: @r15_path/2 + @r15_cas / 2; }
            [zoom=16] { line-width: @r16_path/2 + @r16_cas / 2; }
            [zoom=17] { line-width: @r17_path/2 + @r17_cas / 2; }
            [zoom=18] { line-width: @r18_path/2 + @r18_cas / 2; }
            [zoom=19] { line-width: @r19_path/2 + @r19_cas / 2; }
            [zoom>=20]{ line-width: @r20_path/2 + @r20_cas / 2; }
        }
        ::inline[zoom>=15] {
            line-color: @trail-fill;
            line-join:round;
            line-cap: round;
            [zoom=14] { line-width: @r14_path/2; }
            [zoom=15] { line-width: @r15_path/2; }
            [zoom=16] { line-width: @r16_path/2; }
            [zoom=17] { line-width: @r17_path/2; }
            [zoom=18] { line-width: @r18_path/2; }
            [zoom=19] { line-width: @r19_path/2; }
            [zoom>=20]{ line-width: @r20_path/2; }
        }
    }

    [feature='proposed'] {
        ::casing[zoom>=14] {
            line-color: @path-casing;
	        line-dasharray: @road-dash;
            line-join: round;
            [zoom=14] { line-width: 0; }
            [zoom=15] { line-width: 0; }
            [zoom=16] { line-width: @r16_min + @r16_cas; }
            [zoom=17] { line-width: @r17_min + @r17_cas; }
            [zoom>=18]{ line-width: @r18_min + @r18_cas; }
        }
        ::inline[zoom>=14] {
            line-color: @path-fill;
	        line-dasharray: @road-dash;
            line-join:round;
            line-cap: butt;
            [zoom=14] { line-width: @r14_min; line-color: @path-line; }
            [zoom=15] { line-width: @r15_min; line-color: @path-line; }
            [zoom=16] { line-width: @r16_min; }
            [zoom=17] { line-width: @r17_min; }
            [zoom>=18]{ line-width: @r18_min; }
        }
    }

}

//
// Ferry
//

#road_gen0[osm_class='route'][zoom>=9][zoom<=12],
#road     [osm_class='route'][zoom>=13], {
    [feature='ferry'] {
        ::inline {
            line-color: @ferry-line;
            line-dasharray: @road-dash;
        }
    }
}

//
// Detailed railways
//
#road_tunnel_gen0[osm_class='railway'][zoom>=9][zoom<=12],
#road_gen0       [osm_class='railway'][zoom>=9][zoom<=12],
#road_tunnel     [osm_class='railway'][zoom>=13],
#road            [osm_class='railway'][zoom>=13], {
    [zoom=9] {
        ::rail {
            [feature='rail'] {
                line-width: 0.75;
                line-color: @rail-line;
            }
        }
    }

    [zoom>=10][zoom<12] {
        ::rail {
            [feature='rail'] {
                line-width: 1;
                line-color: @rail-line;
            }
        }
    }

    [zoom>=12][zoom<=14] {
        ::casing {
            [is_bridge=1] {
                line-color: @rail-line;
                line-width: 4;
                fill/line-color: @land;
                fill/line-width: 2;
            }
        }
        ::rail {
            [feature='monorail'] {
                line-color: @rail-line;
                line-width: 0.5;
                dash/line-color: @rail-line;
                dash/line-width: 1;
                dash/line-dasharray: 1, 4;
            }
            [feature='subway'] {
                line-color: @rail-fill;
                line-width: 1.5;
                dash/line-color: @rail-line;
                dash/line-width: 1;
                dash/line-dasharray: 1.5, 1;
            }
            [feature='rail'] {
                line-color: @rail-line;
                line-width: 1.5;
                dash/line-color: @rail-casing;
                dash/line-width: 1;
                dash/line-dasharray: 5, 5;
            }
        }
    }

    [zoom=15] {
        ::casing {
            [is_bridge=1] {
                line-color: @rail-line;
                line-width: 5;
                fill/line-color: @land;
                fill/line-width: 3;
            }
        }
        ::rail {
            [feature='monorail'] {
                line-color: @rail-line;
                line-width: 0.5;
                dash/line-color: @rail-line;
                dash/line-width: 1.5;
                dash/line-dasharray: 1, 5;
            }
            [feature='subway'] {
                line-color: @rail-casing;
                line-width: 2;
                dash/line-color: @rail-line;
                dash/line-width: 1;
                dash/line-dasharray: 1.5, 1;
            }
            [feature='rail'] {
                line-color: @rail-line;
                line-width: 1.5;
                dash/line-color: @rail-casing;
                dash/line-width: 1;
                dash/line-dasharray: 6, 6;
            }
        }
    }

    [zoom=16] {
        ::casing {
            [is_bridge=1] {
                line-color: @rail-line;
                line-width: 7;
                fill/line-color: @land;
                fill/line-width: 5;
            }
        }
        ::rail {
            [feature='monorail'] {
                line-color: @rail-line;
                line-width: 1;
                dash/line-color: @rail-line;
                dash/line-width: 3;
                dash/line-dasharray: 1, 7;
            }
            [feature='subway'] {
                line-color: @rail-casing;
                line-width: 3;
                dash/line-color: @rail-line;
                dash/line-width: 2;
                dash/line-dasharray: 1.5, 1;
            }
            [feature='rail'] {
                line-color: @rail-line;
                line-width: 3;
                dash/line-color: @rail-casing;
                dash/line-width: 2;
                dash/line-dasharray: 8, 8;
            }
        }
    }

    [zoom>=17] {
        ::casing {
            [is_bridge=1] {
                line-color: @rail-line;
                line-width: 10;
                fill/line-color: @land;
                fill/line-width: 7;
            }
        }
        ::rail {
            [feature='monorail'] {
                line-color: @rail-line;
                line-width: 1.2;
                dash/line-color: @rail-line;
                dash/line-width: 4;
                dash/line-dasharray: 1, 9;
            }
            [feature='subway'] {
                line-color: @rail-casing;
                line-width: 5;
                dash/line-color: @rail-line;
                dash/line-width: 4;
                dash/line-dasharray: 2, 1;
            }
            [feature='rail']{
                line-color: @rail-line;
                line-width: 5;
                dash/line-color: @rail-casing;
                dash/line-width: 3;
                dash/line-dasharray: 14, 14;
            }
        }
    }
}

//
// Oneway arrow
//
/*
#road_tunnel[zoom>=15][osm_class='highway'][is_oneway!=0] ,
#road[zoom>=15][osm_class='highway'][is_oneway!=0]    {
    ::marker {
        [zoom=15][feature='motorway'],
        [zoom=15][feature='primary'],
        [zoom>=16]
        {
            [feature='motorway'] {
                marker-fill: @motorway-casing;
            }
            marker-fill: @primary-casing;
            marker-line-width: 0;
            marker-placement: line;
            marker-type: arrow;
            marker-clip: false;
            marker-height: 6;
            marker-file: url("res/arrow/oneway.svg");
            [is_oneway=-1] { marker-file: url("res/arrow/oneway-reverse.svg") }
            [zoom<=16] { marker-transform: "scale(0.6)"; }
            marker-spacing: 200;
            marker-ignore-placement: true;
        }
    }
}
*/