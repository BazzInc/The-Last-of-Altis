class admin_dialog {
		idd = 3190;
		movingenable = false;
		enableSimulation = true;
		onLoad = "[] spawn life_fnc_adminMenu_Extended;";
		
		class controlsBackground
		{
			class admin_background: Life_RscText
			{
				idc = 1000;
				x = 0.247344 * safezoneW + safezoneX;
				y = 0.247 * safezoneH + safezoneY;
				w = 0.505313 * safezoneW;
				h = 0.55 * safezoneH;
				colorBackground[] = {0,0,0,0.4};
			};
			class admin_titlebc: Life_RscText
			{
				idc = 1001;
				text = "Admin Menu"; //--- ToDo: Localize;
				x = 0.247345 * safezoneW + safezoneX;
				y = 0.225 * safezoneH + safezoneY;
				w = 0.505313 * safezoneW;
				h = 0.022 * safezoneH;
				colorBackground[] = {1,0,0,1};
			};
			class RscText_1002: Life_RscText
			{
				idc = 1002;
				x = 0.262812 * safezoneW + safezoneX;
				y = 0.291 * safezoneH + safezoneY;
				w = 0.0876563 * safezoneW;
				h = 0.11 * safezoneH;
				colorBackground[] = {0,0,0,0.6};
			};
			class admin_geldtitle: Life_RscText
			{
				idc = 1003;
				text = "Geld"; //--- ToDo: Localize;
				x = 0.262812 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.0876563 * safezoneW;
				h = 0.022 * safezoneH;
				colorBackground[] = {1,0,0,1};
			};
			class RscText_1004: Life_RscText
			{
				idc = 1045;
				x = 0.262812 * safezoneW + safezoneX;
				y = 0.445 * safezoneH + safezoneY;
				w = 0.149531 * safezoneW;
				h = 0.308 * safezoneH;
				colorBackground[] = {0,0,0,0.6};
			};
			class admin_player: Life_RscText
			{
				idc = 1005;
				text = "Spieler"; //--- ToDo: Localize;
				x = 0.262812 * safezoneW + safezoneX;
				y = 0.423 * safezoneH + safezoneY;
				w = 0.149531 * safezoneW;
				h = 0.022 * safezoneH;
				colorBackground[] = {1,0,0,1};
			};
			class admin_vehlist: Life_RscText
			{
				idc = 1006;
				text = "Fahrzeuge"; //--- ToDo: Localize;
				x = 0.427812 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.139219 * safezoneW;
				h = 0.022 * safezoneH;
				colorBackground[] = {1,0,0,1};
			};
			class admin_vehback: Life_RscText
			{
				idc = 1007;
				x = 0.427812 * safezoneW + safezoneX;
				y = 0.291 * safezoneH + safezoneY;
				w = 0.139219 * safezoneW;
				h = 0.462 * safezoneH;
				colorBackground[] = {0,0,0,0.6};
			};
			class admin_authors: Life_RscText
			{
				idc = 1004;
				text = "Autoren"; //--- ToDo: Localize;
				x = 0.628906 * safezoneW + safezoneX;
				y = 0.654 * safezoneH + safezoneY;
				w = 0.12375 * safezoneW;
				h = 0.022 * safezoneH;
				colorBackground[] = {1,0,0,1};
			};
			class admin_tp: Life_RscText
			{
				idc = 1009;
				x = 0.5825 * safezoneW + safezoneX;
				y = 0.291 * safezoneH + safezoneY;
				w = 0.154687 * safezoneW;
				h = 0.352 * safezoneH;
				colorBackground[] = {0,0,0,0.6};
			};
			class admin_portort: Life_RscText
			{
				idc = 1010;
				text = "Spawn Auswahl"; //--- ToDo: Localize;
				x = 0.582501 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.154687 * safezoneW;
				h = 0.022 * safezoneH;
				colorBackground[] = {1,0,0,1};
			};
		};
	class controls
	{	
		class test_description: Life_RscStructuredText
		{
			idc = 2903;
			text = "Entwickler: Freakstone"; //--- ToDo: Localize;
			x = 0.628906 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.121 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class admin_close: Life_RscButtonMenu
		{
			idc = 2400;
			text = $STR_Global_Close;
			x = 0.247344 * safezoneW + safezoneX;
			y = 0.797 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0;";
			tooltip = "Klicken Sie hier, um die Anwendung zu beenden.";
		};
		class tool_b_marketreset: Life_RscButtonMenu
		{
			idc = -1;
			text = "Markt Reset(Geht nicht)"; //--- ToDo: Localize;
			x = 0.3 * safezoneW + safezoneX;
			y = 0.797 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_marketReset;";
			tooltip = "Marktpreise werden auf den Standartwert gesetzt.";
		};
		class admin_geld_10000: Life_RscButtonMenu
		{
			idc = 2401;
			text = "+10000$"; //--- ToDo: Localize;
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[10000] spawn life_fnc_adminAddMoney;";
		};
		class admin_geld_100000: Life_RscButtonMenu
		{
			idc = 2402;
			text = "+100000$"; //--- ToDo: Localize;
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[100000] spawn life_fnc_adminAddMoney;";
		};
		class admin_geld_1000000: Life_RscButtonMenu
		{
			idc = 2403;
			text = "+1000000$"; //--- ToDo: Localize;
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[1000000] spawn life_fnc_adminAddMoney;";
		};

		class admin_kick: Life_RscButtonMenu
		{
			idc = 2404;
			text = "Kicken"; //--- ToDo: Localize;
			x = 0.262812 * safezoneW + safezoneX;
			y = 0.764 * safezoneH + safezoneY;
			w = 0.0360937 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminkick";
			tooltip = "Klicken Sie hier, um einen ausgewählten Spieler vom Server zu kicken.";
		};
		class admin_ban: Life_RscButtonMenu
		{
			idc = 2405;
			text = "Ban"; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.764 * safezoneH + safezoneY;
			w = 0.0360937 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminBan;";
			tooltip = "Klicken Sie hier, um einen ausgewählten Spieler zu bannen.";
		};
		class admin_spectate: Life_RscButtonMenu
		{
			idc = 2406;
			text = "Spectate"; //--- ToDo: Localize;
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.764 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Schaue dir an, was die Spieler gerade machen.";
			action = "closeDialog 0; [] spawn life_fnc_ADP_F_Spectate";
		};
		class RPP_Playerlist: Life_RscListbox
		{
			idc = 1500;
			x = 0.267969 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.286 * safezoneH;
			sizeEx = 0.02 * safezoneH;
			onLBSelChanged = "[_this] spawn life_fnc_adminQuery_Extended";
		};
		class veh_List: Life_RscListbox
		{
			idc = 1501;
			x = 0.432969 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.128906 * safezoneW;
			h = 0.44 * safezoneH;
			sizeEx = 0.02 * safezoneH;
		};
		class veh_b_spawn: Life_RscButtonMenu
		{
			idc = 2409;
			text = "Fahrzeug Spawnen"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.764 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[] spawn life_fnc_adminSpawnVehicle;";
			tooltip = "Klicken Sie hier, um Ihr ausgewaehltes Fahrzeug zu spawnen.";
		};
		class admin_roenne: Life_RscButtonMenu
		{
			idc = 2408;
			text = "Kavala"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""civ_spawn_1""); hintc ""Sie sind in Kavala gespawnt"";";
			tooltip = "Klicken Sie hier, um in Kavala zu spawnen";
		};
		class admin_nexoe: Life_RscButtonMenu
		{
			idc = 2440;
			text = "Pygros"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""civ_spawn_2""); hintc ""Sie sind in Pygros gespawnt"";";
			tooltip = "Klicken Sie hier, um in Pygros zu spawnen";			
		};
		class admin_allinge: Life_RscButtonMenu
		{
			idc = 2410;
			text = "Athira"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""civ_spawn_3""); hintc ""Sie sind in Athira gespawnt"";";
			tooltip = "Klicken Sie hier, um in Athira zu spawnen";			
		};
		class admin_gudhjem: Life_RscButtonMenu
		{
			idc = 2411;
			text = "Sofia"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""civ_spawn_4""); hintc ""Sie sind in Sofia gespawnt"";";
			tooltip = "Klicken Sie hier, um in Sofia zu spawnen";			
		};
		class admin_hasle: Life_RscButtonMenu
		{
			idc = 2412;
			text = "Kavala HQ"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""cop_spawn_1""); hintc ""Sie sind in Kavala HQ gespawnt"";";
			tooltip = "Klicken Sie hier, um in Kavala zu spawnen";			
		};
		class admin_christiansoe: Life_RscButtonMenu
		{
			idc = 2413;
			text = "Pygros HQ"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""cop_spawn_2""); hintc ""Sie sind in Pygros HQ gespawnt"";";
			tooltip = "Klicken Sie hier, um in Pygros HQ zu spawnen";			
		};
		class admin_jail: Life_RscButtonMenu
		{
			idc = 2414;
			text = "Gefängnis"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""jail_marker""); hintc ""Sie sind im Gefängnis gespawnt"";";
			tooltip = "Klicken Sie hier, um in Gefängnis zu spawnen";			
		};
		class admin_air: Life_RscButtonMenu
		{
			idc = 2415;
			text = "Air Garage"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""air_g_1""); hintc ""Sie sind an der Air Garage gespawnt"";";
			tooltip = "Klicken Sie hier, um an der Air Garage zu spawnen";			
		};
		class admin_airforce: Life_RscButtonMenu
		{
			idc = 2416;
			text = "Athira HQ"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.566 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""cop_spawn_3""); hintc ""Sie sind am Athira HQ gespawnt"";";
			tooltip = "Klicken Sie hier, um am Athira HQ zu spawnen";			
		};
		class admin_klair: Life_RscButtonMenu
		{
			idc = 2417;
			text = "Air Field"; //--- ToDo: Localize;
			x = 0.592812 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 0; player setPos (getmarkerpos ""respawn_west_1""); hintc ""Sie sind am Air Field gespawnt"";";
			tooltip = "Klicken Sie hier, um am Air Field zu spawnen";			
		};
		 class admin_god_on: Life_RscButtonMenu
        {
            idc = -1;
            text = "God-Mode ein"; //--- ToDo: Localize;
            x = 0.42 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.07 * safezoneW;
            h = 0.022 * safezoneH;
            onButtonClick = "hint ""God-Mode wurde aktiviert.""; player allowDamage false;";
            tooltip = "Aktiviert God-Mode.";
        };
        class admin_god_off: Life_RscButtonMenu
        {
            idc = -1;
            text = "God-Mode aus"; //--- ToDo: Localize;
            x = 0.492 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.07 * safezoneW;
            h = 0.022 * safezoneH;
            onButtonClick = "hint ""God-Mode wurde deaktiviert.""; player allowDamage true;";
            tooltip = "Deaktiviert God-Mode.";
        };
	};	
};	

