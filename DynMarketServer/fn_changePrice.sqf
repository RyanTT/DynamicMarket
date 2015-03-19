/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_itemName = _this select 0;
_itemPrice = _this select 1;

_index = -1;
{
	_index = _index + 1;
	_curItemName = _x select 0;
	_curItemPrice = _x select 1;
	_curItemAmountSold = _x select 2;
	if (_curItemName==_itemName) then {
		DYNMARKET_Items_CurrentPriceArr set [_index,[_curItemName,_itemPrice,_curItemAmountSold]];
	};
} forEach DYNMARKET_Items_CurrentPriceArr;