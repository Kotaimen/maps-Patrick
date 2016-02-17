#label_road_gen1[zoom>=11][zoom<=12],
#label_road_gen0[zoom>=13][zoom<=14],
#label_road     [zoom>=15],
 {
    text-name: '';
    text-placement: line;
    text-face-name: @font-road-highway;

    text-size: @text-size-regular;
    text-fill: @label-road-highway;
    text-halo-fill: @label-road-halo;
    text-halo-radius: @halo-radius-default;
    text-halo-opacity: @label-halo-opacity;

    text-spacing: 160;
    text-repeat-distance: 48;
    [dir>=0] { text-dy: -4; }
    [dir<0] {text-dy: 4;}
//    text-upright: right-only;

    [is_tunnel=1] {
        text-opacity: 0.5;
    }

    [osm_class='highway'] {
        [feature='motorway'], [feature='trunk'] {
            text-name: [name_abbr];
            text-face-name: @font-road-highway;
            text-fill: @label-road-highway;
            [zoom>=15] { text-dy: 0; }
        }
        [feature='primary'], [feature='secondary'] {
            text-name: [name_abbr];
            text-face-name: @font-road-primary;
            text-fill: @label-road-primary;
        }
        [feature='minor'], [feature='path'],
        [feature='pedestrian'], [feature='purposed'] {
            text-name: [name_abbr];
            text-face-name: @font-road-minor;
            text-fill: @label-road-minor;
            [zoom<=15] {
                text-size: @text-size-small;
                text-spacing: 0;
            }
            [zoom>=16] {
                text-spacing: 100;
            }
        }
    }

    [osm_class='railway'] {
        text-name: [name];
        text-face-name: @font-railway;
        text-fill: @label-railway;
        text-dy: 0;
    }

    [osm_class='route'][feature='ferry'][zoom>=15] {
        text-name: [name];
        text-face-name: @font-road-minor;
        text-fill: @label-water-feature;
        text-halo-radius: 0;
        text-spacing: 200;
    }

//    debug-mode: collision;
}
