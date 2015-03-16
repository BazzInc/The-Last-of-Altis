waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198139457644","76561198071877249","76561198075513373","76561198065399993"]) then {
	sleep 30;
	player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"script\hero\Admin-Pfad.sqf","",5,false,true,"",""];
};