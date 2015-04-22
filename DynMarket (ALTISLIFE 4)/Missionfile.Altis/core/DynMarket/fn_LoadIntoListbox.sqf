#include <macro.h>
/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

if (isNil "DYNMARKET_prices") then {[[getPlayerUID player],"TON_fnc_playerLogged",false,false] spawn life_fnc_MP;hint "Getting current prices from the server..";sleep 1;};

disableSerialization;
_dialog = findDisplay 7100;
_listbox = _dialog displayCtrl 7055;
_blacklist =
[
	"apple"
];

{
	_itemName = _x select 0;
	_itemDisplayName = M_CONFIG(getText,"VirtualItems",_itemName,"displayname");
	_itemDisplayIcon = M_CONFIG(getText,"VirtualItems",_itemName,"icon");
	_itemDisplayName = localize _itemDisplayName;
	if !(_x select 0 in _blacklist) then {
		_listbox lbAdd format ["%1",_itemDisplayName];
		_listbox lbSetData [(lbSize _listbox)-1,_x select 0];
		_listbox lbSetPicture [(lbSize _listbox )-1,_itemDisplayIcon];
	};
} forEach DYNMARKET_prices;