#include <macro.h>
/*
File: fn_initasadac.sqf
Author: Bryan "Tonic" Boardwine

Description:
Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

if((__GETC__(life_adaclevel)) < 1) exitWith {
["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
sleep 35;
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"skins\human\medic\adac_uniform.jpg"];
waitUntil {uniform player != "U_Rangemaster"};
};
};

[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_HeliPilotCoveralls"};
        player setObjectTextureGlobal [0,"skins\human\medic\adac_uniform.jpg"];
        waitUntil {uniform player != "U_B_HeliPilotCoveralls"};
    };
};
// ADAC Gear + Setup
if((__GETC__(life_medicLevel)) == 2) exitWith {
	[] call life_fnc_resetMedic;
	[] execVM "IgiLoad\IgiLoadInit.sqf";
	license_med_adac = true;
	license_med_air = true;
};