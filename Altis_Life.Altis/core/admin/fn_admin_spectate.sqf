private ["_found", "_TargP"];
disableSerialization;
_playerlist = 1500;
	
_TargetIdx = lbValue[_playerlist, (lbCurSel _playerlist)];

for "_idx" from 0 to (lbSize _playerlist) do {
				if(lbValue[_playerlist, (lbCurSel _playerlist)] == _TargetIdx) then {
					_TargP = ADP_nameCache select _Targetidx;
					_found = true;
				};
			};

if (_found) then
{
[_TargP] spawn ADP_fnc_SpectateCam;
};