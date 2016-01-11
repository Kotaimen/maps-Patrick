
#label_place_static
    [zoom>=5]
    [continent='North America'] {

    [layer=4][zoom=5],
    [layer=5][zoom=6],
    [layer=6][zoom=7],
    [layer=7][zoom=8],
    [layer=8][zoom=9],
    [layer>=9][zoom=10] {
        
        shield-file: url('res/Assets/place-circle.svg');
        shield-unlock-image: true;
        shield-face-name: @font-place;
        shield-name: '[name]';
        shield-placement-type: simple;
        shield-placement: point;
        shield-size: [font_size] / 2 + 10; // data defined font is too large
        shield-text-dx: 5; shield-text-dy: 5;
        shield-fill: @label-place;
        shield-halo-radius: @halo-radius-default;
        shield-halo-fill: @label-place-halo;
        shield-halo-opacity: @label-place-halo-opacity;
        shield-margin: 2;

        // data defined placement
        [justify='left'] {
            shield-placements: 'E,NE,W';
        }
        [justify='right'] {
            shield-placements: 'W,SW,E';
        }
        shield-placements: 'E,NE,W,SW,S';
    }
    //debug-mode: collision;
}
