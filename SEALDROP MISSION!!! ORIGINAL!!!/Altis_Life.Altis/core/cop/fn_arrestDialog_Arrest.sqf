/*

	Player clicked arrest/ok

*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Invalid destination."};

//Get minutes
_time = ctrlText 1400;


if(! ([_time] call TON_fnc_isnumber)) exitWith
{
	hint "Bitte gib eine zahl an.";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 5 || _time > 120) exitWith { hint hint "Gib bitte einen wert zwischen 5-120 minuten ein!"; };

closeDialog 0; 
[life_pInact_curTarget, _time] call life_fnc_arrestAction;