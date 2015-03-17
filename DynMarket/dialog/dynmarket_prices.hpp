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
		colorBackground[] = {0,0,0,1};
		idc = -1;
		x = 0.276563 * safezoneW + safezoneX;
		y = 0.390043 * safezoneH + safezoneY;
		w = 0.446875 * safezoneW;
		h = 0.219914 * safezoneH;
	};
	class RscListbox_1500: Life_RscListbox
	{
		idc = 7055;
		x = 0.282292 * safezoneW + safezoneX;
		y = 0.39884 * safezoneH + safezoneY;
		w = 0.211979 * safezoneW;
		h = 0.202321 * safezoneH;
		sizeEx = 0.040;
		onLBSelChanged="[] spawn {[] call life_fnc_DisplayPrices;};";
	};
	class RscText_1000: Life_RscText
	{
		idc = -1;
		text = "Current Sell Price Of Selected Item"; //--- ToDo: Localize;
		x = 0.5 * safezoneW + safezoneX;
		y = 0.401039 * safezoneH + safezoneY;
		w = 0.217708 * safezoneW;
		h = 0.0219914 * safezoneH;
	};
	class RscText_1001: Life_RscText
	{
		idc = 7056;
		text = ""; //--- ToDo: Localize;
		x = 0.5 * safezoneW + safezoneX;
		y = 0.416432 * safezoneH + safezoneY;
		w = 0.20625 * safezoneW;
		h = 0.0549786 * safezoneH;
		sizeEx = 0.060;
	};
	class RscText_1002: Life_RscText
	{
		idc = -1;
		text = "Amout Sold By You Since Last Refresh"; //--- ToDo: Localize;
		x = 0.5 * safezoneW + safezoneX;
		y = 0.489004 * safezoneH + safezoneY;
		w = 0.217708 * safezoneW;
		h = 0.0219914 * safezoneH;
	};
	class RscText_1003: Life_RscText
	{
		idc = 7057;
		text = ""; //--- ToDo: Localize;
		x = 0.5 * safezoneW + safezoneX;
		y = 0.502199 * safezoneH + safezoneY;
		w = 0.20625 * safezoneW;
		h = 0.0549786 * safezoneH;
		sizeEx = 0.060;
	};
	class RscButtonMenu_2400: Life_RscButtonMenu
	{
		idc = -1;
		colorBackground[] = {0,0.52,0.03,1};
		text = "OKAY"; //--- ToDo: Localize;
		onButtonClick = "closeDialog 0;";
		x = 0.5 * safezoneW + safezoneX;
		y = 0.57697 * safezoneH + safezoneY;
		w = 0.217708 * safezoneW;
		h = 0.0219914 * safezoneH;
	};
	};
};