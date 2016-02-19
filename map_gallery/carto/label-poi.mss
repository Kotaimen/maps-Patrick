
#label_airport[zoom>=12] {
    shield-file: url('res/Assets/marker/airport-24.svg');
    [feature='helipad'] { shield-file: url('res/Assets/marker/heliport-24.svg'); }

    shield-name: '';
    [zoom>=14] { shield-name:[name]; }

    shield-size: @text-size-regular;
    shield-text-dx: 16;
    shield-text-dy: 16;

    shield-unlock-image: true;
    shield-face-name: @font-poi;

    shield-placement-type: simple;
    shield-placement: point;
    shield-fill: @label-physical;
    shield-halo-radius: @halo-radius-default;
    shield-halo-fill:  @label-poi-halo;
    shield-halo-opacity: @label-poi-halo-opacity;
    shield-margin: 2;
    shield-placements: 'S,E,W';
    shield-wrap-width: 66;

}
