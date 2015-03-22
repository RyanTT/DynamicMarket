class life_dynmarket_prices {
	idd = 7100;
	name= "life_dynmarket_prices";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn {sleep 1;[] call life_fnc_LoadIntoListbox;};";
	
	class controlsBackground {
	};
	
	class controls {
class RscFrame_1800: Life_RscText
{
	idc = -1;

	x = 0.276563 * safezoneW + safezoneX;
	y = 0.390043 * safezoneH + safezoneY;
	w = 0.446875 * safezoneW;
	h = 0.219914 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class RscListbox_1500: Life_RscListBox
{
	idc = 7055;
	onLBSelChanged = "[] spawn {[] call life_fnc_DisplayPrices;};";

	x = 0.282292 * safezoneW + safezoneX;
	y = 0.398839 * safezoneH + safezoneY;
	w = 0.211979 * safezoneW;
	h = 0.202321 * safezoneH;
	sizeEx = 0.0260;
};
class RscText_1000: Life_RscText
{
	idc = -1;

	text = "Current Sell Price"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.401039 * safezoneH + safezoneY;
	w = 0.217708 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1001: Life_RscText
{
	idc = 7056;

	text = "Please select an Item"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.420831 * safezoneH + safezoneY;
	w = 0.20625 * safezoneW;
	h = 0.0549786 * safezoneH;
	sizeEx = 0.060;
};
class RscText_1002: Life_RscText
{
	idc = -1;

	text = "Amout of Items sold by You"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.217708 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscText_1003: Life_RscText
{
	idc = 7057;

	text = "2345"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.513195 * safezoneH + safezoneY;
	w = 0.20625 * safezoneW;
	h = 0.0549786 * safezoneH;
	sizeEx = 0.060;
};
class RscButtonMenu_2400: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	idc = 1006;
	text = "OKAY"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.57697 * safezoneH + safezoneY;
	w = 0.217708 * safezoneW;
	h = 0.0219914 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.52,0.03,1};
};
class RscText_1007: Life_RscStructuredText
{
	idc = 7058;

	text = ""; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	//y = 0.447221 * safezoneH + safezoneY;
	y = 0.460221 * safezoneH + safezoneY;
	w = 0.20625 * safezoneW;
	h = 0.0549786 * safezoneH;
	colorText[] = {0.33,0.33,0.33,1};
};
};
};