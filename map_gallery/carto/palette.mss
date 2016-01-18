//
// Physical Feature
//
@land:              #B0AE9C;
@water:             #88aabb;
@river:             #2288bb;


//
// Boundary
//
@boundary-line:     #dddddd;
@boundary-casing:   #444444;
@boundary-opacity:  0.33;

//
// Road
//
@road-dash:         8, 3;
@casing:            fadeout(#C2C4BE, 33%);

@ferry-line:        #1e78a5;

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
@label-halo:                #ffffff;
@label-halo-opacity:        0.33;


@label-admin:               @boundary-line;
@label-admin-halo:          @boundary-casing;
@label-admin-halo-opacity:  @boundary-opacity;

@label-place:               #f5e2ba;
@label-place-halo:          #222222;
@label-place-halo-opacity:  0.5;

@label-road-highway:        #444455;
@label-road-primary:        @label-road-highway;
@label-road-minor:          #555566;
@label-road-path:           @label-road-minor;
@label-road-halo:           @label-halo;
@label-road-halo-opacity:   0.5;
@label-railway:             @label-road-minor;

@label-water-feature:       #0B5F80;
@label-park:                #1c381c;
@label-physical:            #552211;



//
// Fonts
//
@font-place:                "Roboto Condensed Regular";
@font-admin:                "Roboto Black";
@font-physical:             "Roboto Medium Italic";
@font-water-feature:        "Roboto Medium Italic";

@font-poi:                  "Roboto Medium Italic";
@font-road-highway:         "Roboto Medium";
@font-road-primary:         "Roboto Regular";
@font-road-minor:           "Roboto Regular";
@font-railway:              "Roboto Regular";

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
