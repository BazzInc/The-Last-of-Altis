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
			["I_Heli_Transport_02_F",0],
			["I_Heli_light_03_unarmed_F",0]
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
			["C_SUV_01_F",0]
		];
	};

	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",5000,
			["C_Van_01_fuel_F",30000],
			["C_Hatchback_01_F",20000],
			["C_Offroad_01_F",25000],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",50000]
		];
	}; 

	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",25000],Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",250000],
			["I_Truck_02_covered_F",350000],
			["B_Truck_01_transport_F",200000],
			["B_Truck_01_covered_F",350000],
			["B_Truck_01_ammo_F",400000],
			["B_Truck_01_box_F",500000],
			["O_Truck_03_device_F",2500000]
		];	
	};

	case "reb_v_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",2500000],
			["B_Heli_Light_01_F",475000],
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",4000000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1800000]];
			_return set[count _return,
			["O_Heli_Transport_04_box_F",7500000]];
		};
	};

	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",7500],
			["B_G_Offroad_01_F",27500]
		];
	};
	
	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",5000];
		_return set[count _return,
		["C_Offroad_01_F",9000]];
		_return set[count _return,
		["O_MRAP_02_F",2000000]];
	};
	
	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",275000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",1800000]];
		_return set[count _return,
		["O_Heli_Transport_04_F",6500000]];
	};
	
	case "cop_car_1":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",10000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",18000]];
			
		};
		if (__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",25000]];
		};
		if (__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];
			_return set[count _return,
			["B_MRAP_01_F",100000]];
		};
		if (__GETC__(life_coplevel) > 6) then
		{    
			_return set[count _return,
			["B_MRAP_01_F",100000]];
			_return set[count _return,
			["I_MRAP_03_F",150000]];
		};
		if (__GETC__(life_coplevel) > 7) then
		{    
			_return set[count _return,
			["I_MRAP_03_F",150000]];
		};
	};
	
	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air_1":
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",50000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",50000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",100000]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",120000]];
		};
		
		if(__GETC__(life_coplevel) > 8) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",150000]];
			_return set[count _return,
			["B_Heli_Transport_03_F",150000]];
		};
	};
	
	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",25000],
			["O_SDV_01_F",50000],
			["C_Boat_Civil_01_F",75000]
		];
	};
	
	case "cop_ship_1":
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Boat_Transport_01_F",3000]];
			_return set[count _return,
			["C_Boat_Civil_01_police_F",20000]];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_return set[count _return,
			["B_SDV_01_F",100000]];
			_return set[count _return,
			["Submarine_01_F",1000000]];
		};
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
			["C_Kart_01_Vrana_F",15000]
		];
	};
	
	case "adac_car":
    {
        _return =
        [
            ["C_SUV_01_F",35000],
            ["B_Truck_01_transport_F",275000],
            ["B_Truck_01_mover_F",250000],
            ["C_Offroad_01_F",1500]
        ];
    };
    
    case "adac_air":
    {
        _return =
        [
            ["O_Heli_Light_02_unarmed_F",100000],
            ["I_Heli_Transport_02_F",100000]
        ];
    };
};
_return;