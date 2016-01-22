#label_admin0[zoom<=7] {
    text-placement: point;

    [zoom<=3] { text-size: 16; text-name: '[label_z3]'; }
    [zoom=4]  { text-size: 18; text-name: '[label_z4]'; }
    [zoom=5]  { text-size: 24; text-name: '[label_z5]'; }
    [zoom>=6] { text-size: 28; text-name: '[label_z6]'; }

    text-face-name: @font-admin;
    text-fill: @label-admin;

    text-halo-fill: @label-admin-halo;
    text-halo-radius: @halo-radius-default;
    text-halo-opacity: @label-admin-halo-opacity;

//    debug-mode: collision;
}

#label_admin1[zoom>=4][zoom<=9] {
    text-placement: point;

    text-name: '';
    [zoom=4] { text-size: 12; text-name: '[label_z4]'; }
    [zoom=5] { text-size: 13; text-name: '[label_z5]'; }
    [zoom=6] { text-size: 14; text-name: '[label_z6]'; text-transform: uppercase; }
    [zoom=7] { text-size: 18; text-name: '[label_z7]'; text-transform: uppercase; }
    [zoom=8] { text-size: 24; text-name: '[label_z7]'; text-character-spacing: 1; text-transform: uppercase; }
    [zoom=9] { text-size: 28; text-name: '[label_z7]'; text-character-spacing: 2; text-transform: uppercase; }

    text-face-name: @font-admin;
    text-fill: @label-admin;
    text-halo-fill: @label-admin-halo;
    text-halo-radius: @halo-radius-default;
    text-halo-opacity: @label-admin-halo-opacity;

//    debug-mode: collision;
    opacity: 0.8;
}

/*
#label_admin1_boundary[sr_adm0_a3='USA'][zoom>=9] {
    text-placement: line;
    text-name: '[name]';
    text-transform: uppercase;
    text-face-name: @font-admin;
    text-fill: @label-admin;
    text-halo-fill: @halo-admin;
    text-size: 14;
    text-halo-radius: 1;
    text-halo-opacity: 0.2;
    text-spacing: 400;
    text-dy: -6;
}
*/