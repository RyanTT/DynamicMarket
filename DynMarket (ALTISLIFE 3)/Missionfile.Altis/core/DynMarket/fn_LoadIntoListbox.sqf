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
_listbox = _dialog displayCtrl 7055;

{
	_itemdisplayname = [([(_x select 0),0] call life_fnc_varHandle)] call life_fnc_varToStr;
	_itemIconPath = [_x select 0] call life_fnc_DYNMARKET_getIcon;
	_listbox lbAdd format ["%1",_itemdisplayname];
	if (_itemIconPath!="") then {_listbox lbSetData [(lbSize _listbox )-1,_itemIconPath];};
} forEach DYNMARKET_prices;