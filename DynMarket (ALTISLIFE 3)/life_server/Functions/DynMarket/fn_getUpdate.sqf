/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_itemArray = [_this,0,[]] call BIS_fnc_param;
if (count _itemArray < 1) exitWith {};
{
	_itemName = _x select 0;
	_itemAmountSold = _x select 1;
	_index = -1;
	{
		_index = _index + 1;
		_curItemName = _x select 0;
		_curItemPrice = _x select 1;
		_curItemAmountSold = _x select 2;
		if (_curItemName==_itemName) then {
			DYNMARKET_Items_CurrentPriceArr set [_index,[_curItemName,_curItemPrice,_curItemAmountSold+_itemAmountSold]];
		};
	} forEach DYNMARKET_Items_CurrentPriceArr;
} forEach _itemArray;