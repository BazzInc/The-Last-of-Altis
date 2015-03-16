waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["","","",""]) then {
	sleep 30;
	player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"script\hero\Admin-Pfad.sqf","",5,false,true,"",""];
};