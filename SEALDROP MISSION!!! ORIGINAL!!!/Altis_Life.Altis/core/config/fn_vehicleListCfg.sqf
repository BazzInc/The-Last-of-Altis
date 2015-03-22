#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{	
	case "med_air_1":
	{
		_return = 
		[
			["B_Heli_Light_01_F",0],
			["O_Heli_Light_02_unarmed_F",0],
			["I_Heli_Transport_02_F",0]
			["O_Heli_Transport_04_F",0]
			["O_Heli_Transport_04_medevac_F",0]
		];
	};

	case "med_shop":
	{
		_return = 
		[
			["C_Offroad_01_F",0],
			["C_Offroad_01_repair_F",0],
			["C_Van_01_box_F",0],
			["B_Truck_01_transport_F",0],
			["I_Truck_02_medical_F",0],
			["O_Truck_03_medical_F",0],
			["B_Truck_01_medical_F",0],
			["C_SUV_01_F",0],
			["O_MRAP_02_F",0]
		];
	};

	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",7500],
			["C_Van_01_fuel_F",40000],
			["C_Hatchback_01_F",22500],
			["C_Offroad_01_F",32500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",35000]
		];
	}; 

	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",35000] //Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",750000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["B_Truck_01_covered_F",300000],
			["B_Truck_01_ammo_F",400000],
			["B_Truck_01_box_F",500000],
			["O_Truck_03_device_F",15000000]
		];	
	};

	case "reb_v_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",1800000],
			["B_Heli_Light_01_F",325000],
			["B_G_Offroad_01_armed_F",750000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",2000000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",750000]];
			_return set[count _return,
			["O_Heli_Transport_04_box_F",12500000]];
			return set[count _return,
			["B_Heli_Transport_03_F",15000000]];
		};
	};

	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000]
		];
	};
	
	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",9000]];
		_return set[count _return,
		["O_MRAP_02_F",950000]];
	};
	
	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",275000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",350000]];
		_return set[count _return,
		["O_Heli_Transport_04_F",550000]];		
	};
	
	case "cop_car_1":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",15000]];
			_return set[count _return,
			["C_Offroad_01_F",5000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",25000]];
		};
		if (__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if (__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",250000]];
		};
		if (__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",250000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",250000]];
		};
	};
	
	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["C_Heli_Light_01_civil_F",1000000]
		];
	};
	
	case "cop_air_1":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",50000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",65000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["B_Heli_Transport_03_F",225000]];
		};
	};
	
	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["O_SDV_01_F",30000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "cop_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
	
	case "donator_car":
	{
		if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,
			["B_Quadbike_01_F",500]];
			_return set[count _return,
			["C_Offroad_01_F",2500]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,
			["C_SUV_01_F",20000]];
			_return set[count _return,
			["C_Van_01_fuel_F",7500]];
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",175000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",650000]];
		};
	};
	
	case "soldner_1":
	{
		if(__GETC__(life_donator) == 3) then
		{
			_return set[count _return,
			["I_MRAP_03_F",2000000]];
			_return set[count _return,
			["O_MRAP_02_F",1800000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",650000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",175000]];
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];
			_return set[count _return,
			["B_Truck_01_box_F",2500000]];
			_return set[count _return,
			["B_MRAP_01_F",2000000]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",1250000]];
		};
	}; 
	
	case "kart_shop":
	{
		_return = 
		[
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000],
			["C_Kart_01_Blu_F",15000]
		];
	};
};
_return;