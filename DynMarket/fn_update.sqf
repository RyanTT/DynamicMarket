/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/
_sellarraycopy = sell_array;
_mode = _this select 0;
_itemArray = [_this,1,[]] call BIS_fnc_param;

switch (_mode) do {
	case 0:
	{
		[[DYNAMICMARKET_boughtItems],"TON_fnc_getUpdate",false,false] spawn life_fnc_MP;
		hint "Sold Items have been send to the server!";
		hint format ["%1",DYNAMICMARKET_boughtItems];
		DYNAMICMARKET_boughtItems = [];
	};
	case 1:
	{
		{
			_itemName = _x select 0;
			_itemNewPrice = _x select 1;
			
			_index = -1;
			{
				_index = _index + 1;
				_curItemName = _x select 0;
				if (_curItemName==_itemName) then {
					_sellarraycopy set [_index,[_itemName,_itemNewPrice]];
				};
			} forEach _sellarraycopy;
		} forEach _itemArray;
		hint "Your prices have been updated!";
		sell_array = _sellarraycopy;
	};
};