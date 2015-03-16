private ["_money"];

if((call life_adminlevel) < 1) exitWith {};

_money = _this select 0;

if(_money <= 0) exitWith
{
	hint "Fehlerhafter Geldbetrag fn_adminAddMoney";
};

life_cash = life_cash + _money;


hintSilent format["Aktueller Geldbetrag: $%1", [life_cash] call life_fnc_numberText];

