/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/
disableSerialization;
_dialog = findDisplay 7100;

_listbox = _dialog  displayCtrl 7055;
_cashdisplay = _dialog displayCtrl 7056;
_amountsolddisplay = _dialog displayCtrl 7057;
_cashdisplayold = _dialog displayCtrl 7058;
_index = lbCurSel _listbox;

_costOld = 0;

if (!isNil "DYNMARKET_pricesOld") then {_itemArrayOld = DYNMARKET_pricesOld select _index;} else {_itemArrayOld=["",0];};

_itemArray = DYNMARKET_prices select _index;
_itemArrayOld = DYNMARKET_pricesOld select _index;
_cost = _itemArray select 1;
_costOld = _itemArrayOld select 1;
_itemname = _itemArray select 0;

_amountsold = 0;
{
	_name = _x select 0;
	_sold = _x select 1;
	if (_itemname==_name) then {
		_amountsold = _amountsold + _sold;
	};
} forEach DYNAMICMARKET_boughtItems;

_amountsolddisplay ctrlSetText format ["%1",_amountsold];
_cashdisplay ctrlSetText format ["%1$",_cost];
_cashdisplayold ctrlSetText format ["%1$",_costOld];