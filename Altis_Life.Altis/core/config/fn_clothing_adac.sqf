/*
    File: fn_clothing_adac.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Master configuration file for adac Outfits.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price
//Shop Title Name
ctrlSetText[3103,"Adac Kleidershop"];
_ret = 
switch (_filter) do
{
    //Uniforms
    case 0:
    {
	_ret = 
        [
		["U_B_HeliPilotCoveralls","ADAC Uniform",500]
        ];
    };
    
    //Hats
    case 1:
    {
	   _ret = 
        [
            ["H_Bandanna_camo","Camo Bandanna",120],
            ["H_Bandanna_surfer","Surfer Bandanna",130],
            ["H_Bandanna_gry","Grey Bandanna",150],
            ["H_Bandanna_cbr",nil,165],
            ["H_Bandanna_surfer",nil,135],
			["H_Cap_marshal",nil,50]
        ];
    };
    
    //Glasses
    case 2:
    {
	_ret = 
        [
            ["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30]
        ];
    };
    
    //Vest
    case 3:
    {
	_ret = 
        [
        ];
    };
    
    //Backpacks
    case 4:
    {
	_ret = 
        [
			["B_Kitbag_cbr","ADAC-Backpack",250]
        ];
    };
};
_ret;