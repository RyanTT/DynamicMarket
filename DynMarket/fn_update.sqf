/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/
_mode = _this select 0;
_itemArray = [_this,1,[]] call BIS_fnc_param;
_txt1 = DYNMARKET_UserNotification_Text select 0;
_txt2 = DYNMARKET_UserNotification_Text select 1;

switch (_mode) do {
	case 0:
	{
		[[DYNAMICMARKET_boughtItems],"TON_fnc_getUpdate",false,false] spawn life_fnc_MP;
		hint _txt2;
		hint format ["%1",DYNAMICMARKET_boughtItems];
		DYNAMICMARKET_boughtItems = [];
	};
	case 1:
	{
		sell_array = _itemArray;
		hint _txt1;
	};
};