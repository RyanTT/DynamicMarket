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
disableSerialization;
_dialog = findDisplay 7100;
_listbox = _dialog displayCtrl 7055;

{
	_itemName = _x select 0;
	_itemDisplayName = M_CONFIG(getText,"VirtualItems",_itemName,"displayname");
	_itemDisplayName = localize _itemDisplayName;
	_listbox lbAdd format ["%1",_itemDisplayName];
} forEach DYNMARKET_prices;