/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
###                                                           ###
###                 This File are Only for 4.0                ###
###                                                           ###
#################################################################
*/

disableSerialization;
_dialog = findDisplay 7100;
_listbox = _dialog displayCtrl 7055;

{
	 _itemdisplayname = M_CONFIG(getText,"VirtualItems",_x select 0,"displayName");
	_listbox lbAdd format ["%1",_itemdisplayname];
} forEach DYNMARKET_prices;
