#nps_boundary {
    [zoom=5] [minzoompol<=2],
    [zoom=6] [minzoompol<=3],
    [zoom=7] [minzoompol<=4],
    [zoom=8] [minzoompol<=5],
    [zoom=9] [minzoompol<=6],
    [zoom=10][minzoompol<=7],
    [zoom=11][minzoompol<=8],
    [zoom=12][minzoompol<=9],
    [zoom=13][minzoompol<=10],
    [zoom=14][minzoompol<=11],
    [zoom>=15][minzoompol<=100], {
        inline/line-color: @label-park-halo;
        inline/line-join: round;
        inline/line-width: 6;
        inline/line-offset: -3;
        inline/line-opacity: 0.5;
        outline/line-color: @park-boundary;
        outline/line-join: round;
        outline/line-cap: round;
        outline/line-simplify: 2;
        outline/line-width: 3;
    }
}

#nps_trail[zoom>=6][zoom<=9] {

    fill/line-color: @label-halo-default;
    fill/line-opacity: 0.33;
    [zoom=6] { fill/line-width: 4+2; }
    [zoom=7] { fill/line-width: 5+2; }
    [zoom=8] { fill/line-width: 6+2; }
    [zoom=9] { fill/line-width: 7+2; }


    [display_na='Appalachian NST'] { line-color: #12837F; }
    [display_na='Arizona NST'] { line-color: #179BAB; }
    [display_na='California NHT'] { line-color: #B92246; }
    [display_na='Continental Divide NST'] { line-color: #12837F; }
    [display_na='Juan Bautista De Anza NHT'] { line-color: #997162; }
    [display_na='Florida NST'] { line-color: #12837F; }
    [display_na='Ice Age NST'] { line-color: #6AA744; }
    [display_na='Captain John Smith Chesapeake NHT'] { line-color: #12837F; }
    [display_na='Lewis and Clark NHT'] { line-color: #D2825F; }
    [display_na='Mormon Pioneer NHT'] { line-color: #E3BD37; }
    [display_na='Natchez Trace NST'] { line-color: #12837F; }
    [display_na='New England NST'] { line-color: #179BAB; }
    [display_na='Nez Perce NHT'] { line-color: #4485C2; }
    [display_na='North Country NST'] { line-color: #179BAB; }
    [display_na='Old Spanish NHT'] { line-color: #D2825F; }
    [display_na='Oregon NHT'] { line-color: #997162; }
    [display_na='Overmountain Victory NHT'] { line-color: #B92246; }
    [display_na='Pacific Crest NST'] { line-color: #12837F; }
    [display_na='Pacific Northwest NST'] { line-color: #6AA744; }
    [display_na='Pony Express NHT'] { line-color: #4485C2; }
    [display_na='Santa Fe NHT'] { line-color: #936E9E; }
    [display_na='Selma to Montgomery NHT'] { line-color: #936E9E; }
    [display_na='Star Spangled Banner NST'] { line-color: #4485C2; }
    [display_na='El Camino Real De Tierra Adentro NHT'] { line-color: #B92246; }
    [display_na='Trail of Tears NHT'] { line-color: #997162; }
    [display_na='Washington Rochambeau Revolutionary Route NHT'] { line-color: #B92246; }
    [display_na='El Camino Real De Los Tejas NHT'] { line-color: #D2825F; }

    [zoom=6] { line-width: 4; }
    [zoom=7] { line-width: 5; }
    [zoom=8] { line-width: 6; }
    [zoom=9] { line-width: 7; }

    line-clip: true;
    line-join: round;
    line-dasharray: 1,1;
    opacity: 0.8;
}

#nps_building[zoom>=13],
#nps_parking[zoom>=13],
{
    polygon-fill: #888888;
    polygon-opacity: 0.5;
}
