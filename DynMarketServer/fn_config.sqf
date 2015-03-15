/*
##################### DYNAMIC MARKET SCRIPT #####################
<<<<<<< HEAD
### AUTHOR: RYAN TT.                                          ###
=======
### AUTHER: RYAN TT.                                          ###
>>>>>>> origin/master
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

DYNMARKET_Serveruptime        = 5;    // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval = 0.5;  // After how many minutes should the price update?

//ITEMGROUP CONFIGURATION
DYNMARKET_Items_Groups =
[
	["Legal",
		[
			["apple",0,10,50],
			["peach",0,30,100]
		],
		0.5
	],
	["Illegal", 
		[
			/*["peach",1,30,100]*/
		],
		0.5
	]
];

//ITEMS TO TRACK CONFIGURATION
DYNMARKET_Items_ToTrack        = /* INDEX 0 = ITEMNAME ; INDEX 1 = STARTPRICE IF DATABASE-MODE DISABLED, YOU CAN COPY THE SELLARRAY FROM THE CONFIGURATIONFILE FROM THE CLIENT*/
[
	["apple",25],
	["peach",50],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["turtle",30077],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["tbacon",25],
	["lockpick",75],
	["handcuffkey",75],
	["pickaxe",750],
	["redgull",200],
	["fuelF",100],
	["spikeStrip",1200],
	["tracker",2500],
	["goldbar",125000],
	["cocainep",5348],
	["heroinp",4527],
	["marijuana",4365],
	["iron_r",3017],
	["copper_r",3746],
	["salt_r",4759],
	["glass",3368],
	["oilp",2571],
	["cement",3342],
	["diamondc",3566],
	["eisenp",3153],
	["getreidep",3210],
	["holzp",3248],
	["hopfenp",3540],
	["schwefelp",3222],
	["silberp",3966],
	["tabakp",4577],
	["traubenp",4006],
	["zinnp",3274],
	["zuckerp",4565],
	["schmuck",14825],
	["bronze",13375],
	["getreideip",4244],
	["zuckerip",4922],
	["tabakip",3977],
	["kkugel",13987],
	["spulver",11408],
	["pbrau",24701],
	["pkugel",62727],
	["uranip",9448],
	["uranp",18108],
	["muschelp",1],
	["korallep",1],
	["aquarium",1],
	["goldfisch",1],
	["goldfischglas",1],
	["pschmuck",1],
	["algenp",1],
	["reisp",1],
	["reisip",1],
	["seidep",1],
	["baumwollep",1],
	["psegel",1],
	["sushi",1],
	["halbl",1],
	["nanop",1],
	["pmuenze",1],
	["rlachs",1],
	["rmakrele",1],
	["tfsteak",1],
	["resche",1],
	["display",1],
	["szellen",1],
	["htrans",1],
	["prothese",1],
	["kunststoff",1],
	["titanp",1],
	["notebook",1],
	["kaffeep",1],
	["statue",1],
	["scanner",10000],
	["uwsl",5000]
];

//### DO NOT MODIFY THE FOLLOWING CODE! ###
DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 60;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
//if (DYNMARKET_UseExternalDatabase) then {[] call TON_fnc_HandleDB};
sleep 5;
[] call TON_fnc_sleeper;
