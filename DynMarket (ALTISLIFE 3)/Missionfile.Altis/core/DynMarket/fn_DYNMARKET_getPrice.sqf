/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_price = 0;
_kind = _this select 0;
{
	_curItemName = _x select 0;
	_curItemPrice = _x select 1;
	if (_curItemName==_kind) then {_price=_curItemPrice};
} forEach DYNMARKET_prices;
_price;