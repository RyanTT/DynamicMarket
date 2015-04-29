/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_itemName = [_this,0,""] call BIS_fnc_param;

_iconPath = "";

switch (_itemName) do {
	//case "apple": {_iconPath = "icons\apple.paa";};
	case default {_iconPath = "";};
};

_iconPath;