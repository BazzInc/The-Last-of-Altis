?_u = _this select 0;
_p = ["<t color='#33CC66'>Insert Earplugs</t>",{
    _s = _this select 0;
    _i = _this select 2;
    if (soundVolume != 1) then {
        1 fadeSound 1;
        _s setUserActionText [_i,"<t color='#33CC66'>Kopfhörer Benutzen</t>"];
    } else {
        1 fadeSound 0.3;
        _s setUserActionText [_i,"<t color='#FF0000'>Kopfhörer Entfernen</t>"];
    }
},[],-90,false,true,"","_target == vehicle player"];
_u addAction _p;
_u addEventHandler ["Respawn",{
    1 fadeSound 1;
    (_this select 0) addAction _p;
}];