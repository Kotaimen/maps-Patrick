//
// Physical Feature
//
@land:              #99a28d;
@water:             #88aabb;
@river:             #4488cc;


//
// Boundary
//
@boundary-line:     #c3c8ca;
@boundary-casing:   #555555;
@boundary-opacity:  0.33;

//
// Road
//
@road-dash:         8, 3;
@casing:            fadeout(#c4c1b5, 67%);

@ferry-line:        lighten(@river, 7%);

@motorway-line:     @motorway-fill;
@motorway-fill:     #737780;
@motorway-casing:   @casing;
@motorway-link:     @motorway-fill;

@primary-line:      #737780;
@primary-fill:   	#80848d;
@primary-casing: 	@casing;

@secondary-line:    @primary-line;
@secondary-fill:    @primary-fill;
@secondary-casing:  @casing;

@minor-line:        @primary-line;
@minor-fill:        @primary-fill;
@minor-casing:      @casing;

@path-line:         @primary-line;
@path-fill:         #888e8b;
@path-casing:       @casing;

@trail-line:        @path-line;
@trail-fill:        @path-fill;
@trail-casing:      @casing;

@rail-line:         #667777;
@rail-fill:         #bbbbbb;
@rail-casing:       #bbbbbb;

//
// Label
//
@halo-radius-default:       1;
@halo-radius-thick:         2;

@label-halo-default:        #d4d1c9;
@label-halo-opacity:        0.33;


@label-admin:               @boundary-line;
@label-admin-halo:          @boundary-casing;
@label-admin-halo-opacity:  0.33;

@label-place:               #ccd9dd;
@label-place-halo:          #222222;
@label-place-halo-opacity:  0.33;

@label-road-highway:        #555566;
@label-road-primary:        @label-road-highway;
@label-road-minor:          @label-road-highway;
@label-road-path:           @label-road-minor;
@label-road-halo:           @label-halo-default;
@label-road-halo-opacity:   @label-halo-opacity;
@label-railway:             @label-road-minor;

@label-water-feature:       #115588;
@label-water-halo:          @label-halo-default;

@label-physical:            #332222;
@label-physical-halo:       @label-halo-default;
@label-physical-halo-opacity: 0.33;

@label-georegion:           #554444;
@label-georegion-halo:      @label-halo-default;
@label-georegion-halo-opacity: 0.5;

@label-park:                #1c381c;
@label-park-halo:           @label-halo-default;


//
// Fonts
//
@font-place:                "Roboto Condensed Regular";
@font-admin:                "Roboto Bold";
@font-physical:             "Roboto Medium Italic";
@font-georegion:            "Roboto Medium Italic";
@font-water-feature:        "Roboto Medium Italic";

@font-road-highway:         "Roboto Medium";
@font-road-primary:         "Roboto Medium";
@font-road-minor:           "Roboto Regular";
@font-railway:              "Roboto Regular";

@font-poi:                  "Roboto Condensed Regular";

@text-size-regular:         14;
@text-size-small:           12;
@text-size-large:           18;

//
// Background
//
Map {
//    background-image: url('res/real-hillshading-1.png');
    background-color: @land;
    font-directory: url('fonts');
//    buffer-size: 256;
}
