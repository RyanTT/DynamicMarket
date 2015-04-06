/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_tempArrayHolder = DYNMARKET_Items_CurrentPriceArr;
{
	_itemName = _x select 0;
	_itemLastPrice = _x select 1;
	_itemAmountSold = _x select 2;
	_itemPricePerUnit = 0;
	_itemPriceMin = 0;
	_itemPriceMax = 0;
	_itemGroupName = "";
	_itemFactorOfGroup = 0;
	
	_exit = false;
	if (_itemAmountSold>0) then
	{
		{
			if (!_exit) then {
				_GROUParray = _x;
				_itemGroupName = _GROUParray select 0;
				_GROUPITEMSarray = _GROUParray select 1;
				_itemFactorOfGroup = _GROUParray select 2;
				{
					_ITEMSarray = _x;
					_curITEMname = _ITEMSarray select 0;
					_curITEMpriceperunit = _ITEMSarray select 1;
					_curITEMmin = _ITEMSarray select 2;
					_curITEMmax = _ITEMSarray select 3;
					if (_curITEMname==_itemName) then {
						_exit = true;
						_itemPricePerUnit = _curITEMpriceperunit;
						_itemPriceMin = _curITEMmin;
						_itemPriceMax = _curITEMmax;
					};
				} forEach _GROUPITEMSarray;
			};
		} forEach DYNMARKET_Items_Groups;
		
		//ADJUST THE PRICES
		
		{
			_GROUParray = _x;
			_GROUPNAME = _GROUParray select 0;
			_GROUPITEMSarray = _GROUParray select 1;
			if (_itemGroupName==_GROUPNAME) then
			{
				{
					_ITEMSarray = _x;
					_curITEMname = _ITEMSarray select 0;
					_curITEMpriceperunit = _ITEMSarray select 1;
					_curITEMmin = _ITEMSarray select 2;
					_curITEMmax = _ITEMSarray select 3;
					if (_curITEMname==_itemName) then 
					{
						// Find old price
						_curItemOldPrice = 0;
						{
							_curItemName2 = _x select 0;
							_curItemPrice2 = _x select 1;
							_curItemAmountSold2 = _x select 2;
							if (_curItemName2==_curITEMname) then {
								_curItemOldPrice = _curItemPrice2;
							};
						} forEach DYNMARKET_Items_CurrentPriceArr;
						// Calculate new own price
						_NEWPRICE = _curItemOldPrice-(_itemAmountSold*(_curItemOldPrice/2000)*_itemFactorOfGroup);
						if (_NEWPRICE<_curITEMmin) then {_NEWPRICE=_curITEMmin};
						if (_NEWPRICE>_curITEMmax) then {_NEWPRICE=_curITEMmax};
						_index = -1;
						{
							_index = _index + 1;
							_curItemName3 = _x select 0;
							_curItemPrice3 = _x select 1;
							_curItemAmountSold3 = _x select 2;
							if (_curItemName3==_curITEMname) then {
								DYNMARKET_Items_CurrentPriceArr set [_index,[_curITEMname,_NEWPRICE,0]];
							};
						} forEach DYNMARKET_Items_CurrentPriceArr;
					} else {
						// Calculate new price
						_index = -1;
						{
							_index = _index + 1;
							_curItemName3 = _x select 0;
							_curItemPrice3 = _x select 1;
							_curItemAmountSold3 = _x select 2;
							if (_curItemName3==_curITEMname) then {
								_NEWPRICE = _curItemPrice3+(_itemAmountSold*(_curItemPrice3/1000)*_itemFactorOfGroup);
								if (_NEWPRICE<_curITEMmin) then {_NEWPRICE=_curITEMmin};
								if (_NEWPRICE>_curITEMmax) then {_NEWPRICE=_curITEMmax};
								DYNMARKET_Items_CurrentPriceArr set [_index,[_curITEMname,_NEWPRICE,_curItemAmountSold3]];
							};
						} forEach DYNMARKET_Items_CurrentPriceArr;
					};
				} forEach _GROUPITEMSarray;
			};
		} forEach DYNMARKET_Items_Groups;
	};
} forEach DYNMARKET_Items_CurrentPriceArr;
DYNMARKET_Items_CurrentPriceArr = _tempArrayHolder;

// Translate to sell_array

{
	_itemName = _x select 0;
	_itemNewPrice = _x select 1;
	
	_index = -1;
	{
		_index = _index + 1;
		_curItemName = _x select 0;
		if (_curItemName==_itemName) then {
			DYNMARKET_sellarraycopy set [_index,[_itemName,_itemNewPrice]];
		};
	} forEach DYNMARKET_sellarraycopy;
} forEach DYNMARKET_Items_CurrentPriceArr;

[[1,DYNMARKET_sellarraycopy],"life_fnc_update",true,false] spawn life_fnc_MP;