_pathtovehiclescars = "script\hero\vehicles\Autos\";
_pathtovehicleshelis = "script\hero\vehicles\helis\";
_pathtoweapon = "script\hero\weapons\";
_pathtotools = "script\hero\tools\";
_EXECscript1 = 'player execVM "'+_pathtovehiclescars+'%1"';
_EXECscript2 = 'player execVM "'+_pathtovehicleshelis+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtotools+'%1"';
//customise these menus to fit your server
if ((getPlayerUID player) in ["76561198031874434","76561197999847045","76561198087854983","76561198139457644","76561198069207604","76561198079247172","76561198122912324","76561198124325948","76561198065399993","76561198124864894","76561198071877249","76561198075513373"]) then { // Admin PlayerID Eintragen
	if ((getPlayerUID player) in ["######","######"]) then { // Mod PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:ModToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in [""]) then { // Admin PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:AdminToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["76561198139457644","76561198065399993","76561198124864894","76561198071877249","76561198075513373"]) then { // Super Admin PlayerID Eintragen
		adminmenu =
		[
			["",true],
				["Tools Menu", [2], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Spawn Manu", [3], "#USER:SpawnMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
};
//customise to fit
ModToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//customise to fit
AdminToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["Spectate Player", [6],  "", -5, [["expression", format[_EXECscript4,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [7], "", -5, [["expression", format[_EXECscript4, "TPtoME.sqf"]]], "1", "1"],
		["Teleport", [8], "", -5, [["expression", format[_EXECscript4, "Tele.sqf"]]], "1", "1"],
		["Autos Repair und Flipen", [10], "", -5, [["expression", format[_EXECscript4, "repairflip.sqf"]]], "1", "1"],
		["Cash", [11], "", -5, [["expression", format[_EXECscript4, "cash.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["Selber Heilen", [3],  "", -5, [["expression", format[_EXECscript4,"heal.sqf"]]], "1", "1"],
		["Spieler Heilen", [4],  "", -5, [["expression", format[_EXECscript4,"healp.sqf"]]], "1", "1"],
		["Car God", [5],  "", -5, [["expression", format[_EXECscript4,"cargod.sqf"]]], "1", "1"],
		["Spectate Player", [6],  "", -5, [["expression", format[_EXECscript4,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [7], "", -5, [["expression", format[_EXECscript4, "TPtoME.sqf"]]], "1", "1"],
		["Teleport", [8], "", -5, [["expression", format[_EXECscript4, "Tele.sqf"]]], "1", "1"],
		["ESP", [9], "", -5, [["expression", format[_EXECscript4, "ESP.sqf"]]], "1", "1"],
		["Autos Repair und Flipen", [10], "", -5, [["expression", format[_EXECscript4, "repairflip.sqf"]]], "1", "1"],
		["Cash", [11], "", -5, [["expression", format[_EXECscript4, "cash.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//["ESP", [9], "", -5, [["expression", format[_EXECscript4, "ESP.sqf"]]], "1", "1"],
SpawnMenu =
[
	["Spawn",true],
			["Waffen", [12], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
			["Vehicle", [12], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu =
[
	["Waffen",true],
		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
		["MK 200", [3],  "", -5, [["expression", format[_EXECscript3,"mk200.sqf"]]], "1", "1"],
		["LRR", [4],  "", -5, [["expression", format[_EXECscript3,"lrr.sqf"]]], "1", "1"],
		["EBR", [5],  "", -5, [["expression", format[_EXECscript3,"ebr.sqf"]]], "1", "1"],
		["GM6", [6],  "", -5, [["expression", format[_EXECscript3,"gm6.sqf"]]], "1", "1"],
		["P07", [7],  "", -5, [["expression", format[_EXECscript3,"phgun.sqf"]]], "1", "1"],
		
			["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu2 = 
[
	["Waffen 2",true],
	//Add Weapons Here Gave another page because it could get a little confusing :P
		["MXSil", [2],  "", -5, [["expression", format[_EXECscript3,"MXSil.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
VehicleMenu = 
[
	["Vehicles",true],
			["Autos", [12], "#USER:AutoMenu", -5, [["expression", ""]], "1", "1"],
			["Helis", [12], "#USER:HeliMenu", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
AutoMenu = 
[
	["Autos",true],
		["ATV", [2],  "", -5, [["expression", format[_EXECscript1,"ATV.sqf"]]], "1", "1"],
		["Hunter Armed", [3],  "", -5, [["expression", format[_EXECscript1,"hunter.sqf"]]], "1", "1"],
		["Offroad Truck HMG .50", [4],  "", -5, [["expression", format[_EXECscript1,"offroad.sqf"]]], "1", "1"],
		["Truck Transport", [5],  "", -5, [["expression", format[_EXECscript1,"B_Truck_01_transport_F.sqf"]]], "1", "1"],
		["Truck Repair", [6],  "", -5, [["expression", format[_EXECscript1,"B_Truck_01_Repair_F.sqf"]]], "1", "1"],
		["Truck Fuel", [7],  "", -5, [["expression", format[_EXECscript1,"B_Truck_01_fuel_F.sqf"]]], "1", "1"],
		["Truck Box", [8],  "", -5, [["expression", format[_EXECscript1,"B_Truck_01_box_F.sqf"]]], "1", "1"],
		["Ifrit", [9],  "", -5, [["expression", format[_EXECscript1,"O_MRAP_02_F.sqf"]]], "1", "1"],
		["UAV", [10],  "", -5, [["expression", format[_EXECscript1,"O_UGV_01_F.sqf"]]], "1", "1"],
		["Offroad", [11],  "", -5, [["expression", format[_EXECscript1,"offroad.sqf"]]], "1", "1"],
		["Panzer 01", [12],  "", -5, [["expression", format[_EXECscript1,"O_MBT_02_cannon_F.sqf"]]], "1", "1"],
		
			["Next page", [13], "#USER:AutoMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [14], "", -3, [["expression", ""]], "1", "1"]
];
AutoMenu2 =
[
	["Autos 2",true],
		["normaloffroad", [2],  "", -5, [["expression", format[_EXECscript1,"normaloffroad.sqf"]]], "1", "1"],
		["hatchback sport", [3],  "", -5, [["expression", format[_EXECscript1,"C_Hatchback_01_sport_F.sqf"]]], "1", "1"],
		["Kart Varana", [4],  "", -5, [["expression", format[_EXECscript1,"C_Kart_01_Vrana_F.sqf"]]], "1", "1"], 
		["Exit", [5], "", -3, [["expression", ""]], "1", "1"]
];
HeliMenu = 
[
	["Helis",true],
		["Orca B", [2],  "", -5, [["expression", format[_EXECscript2,"Ka60.sqf"]]], "1", "1"],
		["Helcat", [3],  "", -5, [["expression", format[_EXECscript2,"Kat.sqf"]]], "1", "1"],
		["Flugzeug", [4],  "", -5, [["expression", format[_EXECscript2,"I_Plane_Fighter_03_AA_F.sqf"]]], "1", "1"],
		["Bird", [5],  "", -5, [["expression", format[_EXECscript2,"hummingbird.sqf"]]], "1", "1"],
		["Mowhawk", [6],  "", -5, [["expression", format[_EXECscript2,"mowhawk.sqf"]]], "1", "1"],
	["Ghost", [7],  "", -5, [["expression", format[_EXECscript2,"gohst.sqf"]]], "1", "1"],
	["Huron", [8],  "", -5, [["expression", format[_EXECscript2,"Huron.sqf"]]], "1", "1"],
	["Taru Normal", [9],  "", -5, [["expression", format[_EXECscript2,"Taru Normal.sqf"]]], "1", "1"],
	["Taru Bench", [10],  "", -5, [["expression", format[_EXECscript2,"Taru Bench.sqf"]]], "1", "1"],
	
	
		["Exit", [12], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";