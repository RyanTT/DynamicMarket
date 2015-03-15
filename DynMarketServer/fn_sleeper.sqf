/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

while {true} do {
	sleep (DYNMARKET_PriceUpdateInterval*60);
	[[0],"life_fnc_update",true,false] spawn life_fnc_MP;
	sleep 10;
	[] spawn TON_fnc_calculatePrices;
};