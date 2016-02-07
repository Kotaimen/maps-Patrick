// declare image filters separately otherwise carto will stack them together...
#label_shield_gen1{
    image-filters: scale-hsla(0,1,0,0.66,0,0.8,0,1);
}
#label_shield_gen0{
    image-filters: scale-hsla(0,1,0,0.66,0,0.8,0,1);
}
#label_shield{
    image-filters: scale-hsla(0,1,0,0.66,0,0.8,0,1);
}

#label_shield_gen1[zoom>=8][zoom<=10],
#label_shield_gen0[zoom>=11][zoom<=14],
#label_shield[zoom>=15][zoom<=18]
{
    [zoom=8][sign_type='I'],
    [zoom=9][sign_type='I'],
    [zoom=9][sign_type='US'],
    [zoom>=10] {

        shield-name: [sign_num];
        shield-file: url('res/Stage/shield/general-[sign_length]ch.png');
        shield-transform: scale(0.5, 0.5);
        shield-fill: black;

        shield-face-name: 'Roboto Medium';
        [sign_type!=''][sign_length=1] { shield-face-name: 'Roadgeek 2005 Series F Regular'; }
        [sign_type!=''][sign_length=2] { shield-face-name: 'Roadgeek 2005 Series E Regular'; }
        [sign_type!=''][sign_length=3] { shield-face-name: 'Roadgeek 2005 Series C Regular'; }
        [sign_type!=''][sign_length>=4] { shield-face-name: 'Roadgeek 2005 Series B Regular'; }

        shield-placement: line;
        shield-size: 12;
        shield-spacing: 250;
        shield-repeat-distance: 125;
        shield-margin: 8;
        shield-avoid-edges: true;

        //
        // Interstate
        //
        [sign_type='I'] {
            [sign_length<=2] {
                shield-file: url('res/Assets/shield/Interstate-2ch.png');
            }
            [sign_length=3] {
                shield-file: url('res/Assets/shield/Interstate-3ch.png');
                shield-face-name: 'Roadgeek 2005 Series D Regular';
            }
            [sign_length>=4] {
                shield-file: url('res/Assets/shield/Interstate-3ch.png');
                shield-face-name: 'Roadgeek 2005 Series C Regular'
            }
            shield-fill: white;
            shield-dy: -1;
        }

        //
        // US Route
        //
        [sign_type='US'] {
            [sign_length<=2] {
                shield-file: url('res/Assets/shield/US-Route-2ch.png');
            }
            [sign_length=3] {
                shield-file: url('res/Assets/shield/US-Route-3ch.png');
                shield-face-name: 'Roadgeek 2005 Series D Regular';
            }
            [sign_length>=4] {
                shield-file: url('res/Assets/shield/US-Route-3ch.png');
                shield-face-name: 'Roadgeek 2005 Series C Regular';
            }
            shield-dy: -2;
        }

        //
        // Business
        //
        [sign_type='BUS'],
        [sign_type='SPUR'],
        [sign_type='LOOP'] {
            shield-file: url('res/Assets/shield/US-Business.png');
            shield-fill: white;
            shield-dy: -1;
        }

        //
        // State Highways
        //
        [sign_type='AL'] {
            shield-file: url('res/Assets/shield/Alabama-2ch.png');
            shield-dy: 1;
        }

        [sign_type='AK'] {
            shield-file: url('res/Assets/shield/Alaska-1ch.png');
            shield-dx: -3;
            shield-dy: 1;
        }

        [sign_type='AZ'] {
            shield-file: url('res/Assets/shield/Arizona-2ch.png');
            shield-dy: -1;
        }

        [sign_type='AR'] {
            shield-file: url('res/Assets/shield/Arkansas-2ch.png');
            shield-dy: 1;

        }

        [sign_type='CA'] {
            shield-file: url('res/Assets/shield/California-2ch.png');
            shield-dy: -3;
            shield-fill: white;
        }

        [sign_type='CO'] {
            shield-file: url('res/Assets/shield/Colorado-2ch.png');
            shield-dy: -6;
        }

        [sign_type='CT'] {
            shield-file: url('res/Assets/shield/Connecticut-2ch.png');
        }

        [sign_type='FL'] {
            shield-file: url('res/Assets/shield/Florida-2ch.png');
            shield-dy: -2;
        }

        [sign_type='GA'] {
            shield-file: url('res/Assets/shield/Georgia-2ch.png');
            shield-dy: -2;
        }

        [sign_type='HI'] {
            shield-file: url('res/Assets/shield/Hawaii-2ch.png');
            shield-dy: -2;
        }

        [sign_type='ID'] {
            shield-file: url('res/Assets/shield/Idaho-2ch.png');
            shield-dx: -3;
            shield-dy: 5;
            shield-fill: white;
        }

        [sign_type='KS'] {
            shield-file: url('res/Assets/shield/Kansas-2ch.png');
        }

        [sign_type='LA'] {
            shield-file: url('res/Assets/shield/Louisiana-4ch.png');
            shield-dy: -5;
        }

        [sign_type='MD'] {
            shield-file: url('res/Assets/shield/Maryland-2ch.png');
            shield-dy: -3;
        }

        [sign_type='M'] {
            shield-file: url('res/Assets/shield/Michigan-2ch.png');
            shield-dy: -1;
        }

        [sign_type='MN'] {
            shield-file: url('res/Assets/shield/Minnesota-2ch.png');
            shield-fill: white;
            shield-dy: -2;
        }

        [sign_type='MO'] {
            shield-file: url('res/Assets/shield/Missouri-2ch.png');
            shield-dy: -1;
        }

        [sign_type='MT'] {
            shield-file: url('res/Assets/shield/Montana-3ch.png');
            shield-dy: -2;
        }

        [sign_type='NE'] {
            shield-file: url('res/Assets/shield/Nebraska-2ch.png');
            shield-dy: 2;
        }

        [sign_type='NV'] {
            shield-file: url('res/Assets/shield/Nevada-3ch.png');
            shield-dy: 5;
        }

        [sign_type='NH'] {
            shield-file: url('res/Assets/shield/New_Hampshire-2ch.png');
            shield-dx: -1;
        }

        [sign_type='NM'] {
            shield-file: url('res/Assets/shield/New_Mexico-2ch.png');
        }

        [sign_type='NY'] {
            shield-file: url('res/Assets/shield/New_York-2ch.png');
        }

        [sign_type='NC'] {
            shield-file: url('res/Assets/shield/Diamond-2ch.png');
        }

        [sign_type='ND'] {
            shield-file: url('res/Assets/shield/North_Dakota-2ch.png');
        }

        [sign_type='OH'] { // no data?
            shield-file: url('res/Assets/shield/Ohio-2ch.png');
        }

        [sign_type='OK'] {
            shield-file: url('res/Assets/shield/Oklahoma-1ch.png');
            shield-dy: -2;
            [sign_length>=2] { shield-face-name: 'Roadgeek 2005 Series E Regular'; }
        }

        [sign_type='OR'] {
            shield-file: url('res/Assets/shield/Orgeon-2ch.png');
            shield-dy: 1;
        }

        [sign_type='PA'] {
            shield-file: url('res/Assets/shield/Pennsylvania-2ch.png');
            shield-dy: -1;
        }

        [sign_type='RI'] {
            shield-file: url('res/Assets/shield/Rhode_Island-2ch.png');
            shield-dy: -2;
        }

        [sign_type='SD'] {
            shield-file: url('res/Assets/shield/South_Dakota-2ch.png');
        }

        [sign_type='SC'] {
            shield-file: url('res/Assets/shield/South_Carolina-3ch.png');
            shield-dy: -3;
            shield-fill: #4067A0;
            [sign_length>=2] { shield-face-name: 'Roadgeek 2005 Series E Regular'; }
        }

        [sign_type='TN'] {
            shield-file: url('res/Assets/shield/Tennessee-1ch.png');
            shield-dy: 2;
            [sign_length>=2] { shield-face-name: 'Roadgeek 2005 Series E Regular'; }
        }

        [sign_type='TX'] {
            shield-file: url('res/Assets/shield/Texas-2ch.png');
            shield-dy: 3;
        }

        [sign_type='UT'] {
            shield-file: url('res/Assets/shield/Utah-2ch.png');
            shield-size: 11;
        }

        [sign_type='VT'] {
            shield-file: url('res/Assets/shield/Vermont-2ch.png');
            shield-dy: -4;
            shield-fill: #006b54;
        }

        [sign_type='VA'] {
            shield-file: url('res/Assets/shield/Virginia-2ch.png');
            shield-dy: 1;
        }

        [sign_type='WA'] {
            shield-file: url('res/Assets/shield/Washington-2ch.png');
            shield-dy: 1;
        }

        [sign_type='WI'] {
            shield-file: url('res/Assets/shield/Wisconsin-2ch.png');
        }

        [sign_type='WY'] {
            shield-file: url('res/Assets/shield/Wyoming-3ch.png');
    //        shield-dy: -1;
        }

        [sign_type='DE'],
        [sign_type='IA'],
        [sign_type='KY'],
        [sign_type='MS'],
        {
            shield-file: url('res/Assets/shield/Circle-2ch.png');
        }

        [sign_type='IL'],
        [sign_type='IN'],
        [sign_type='ME'],
        [sign_type='MA'],
        [sign_type='WV'],
        {
            shield-file: url('res/Assets/shield/Square-2ch.png');
        }

    }

//    ::debug {
//        text-name: [sign_type]; text-face-name: 'Roboto Black'; text-fill: white;
//    }

}