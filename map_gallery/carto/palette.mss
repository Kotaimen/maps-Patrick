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

@label-admin:               @boundary-line;
@label-admin-halo:          @boundary-casing;
@label-admin-halo-opacity:  @boundary-opacity;

@label-place:               #f5e2ba;
@label-place-halo:          #222222;
@label-place-halo-opacity:  0.5;

@label-water:               #0B5F80;
@label-park:                #1c381c;
@label-physical:            #552211;

//
// Fonts
//
@font-place:        "Roboto Condensed Regular";
@font-admin:        "Roboto Medium";
@font-physical:     "Roboto Medium Italic";
@font-water:        "Roboto Medium Italic";
@font-poi:          "Roboto Medium Italic";


//
// Background
//
Map {
    background-image: url('res/real-hillshading-1.png');
    background-color: @land;
    font-directory: url('fonts');
//    buffer-size: 256;
}
