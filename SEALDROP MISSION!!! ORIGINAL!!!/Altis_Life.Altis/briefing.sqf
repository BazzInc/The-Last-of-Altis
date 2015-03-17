waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Changelog"];
player createDiarySubject ["serverrules","Server Regeln"];
player createDiarySubject ["policerules","Polizei Gesetze"];
player createDiarySubject ["safezones","SafeZones"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					Housing, du kannst den Strom der Städte abstellen, und vieles Mehr <br/>
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Altis Changelog",
				"
					Altis Life 3.1.4.8<br/>
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Alle Regeln findest du in unserem Forum ! www.Folgt Noch.de!<br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
				In Save Zones wird niemand: Gefesselt, Niedergeschlagen, erschossen oder Ausgeraubt!<br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses", 
				"
				Alle Regeln findest du in unserem Forum ! www.Folgt Noch.de!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Cop Interaction", 
				"
				Beleidigt keine Cops, dies fürt zum BAN!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boats", 
				"
				Jegliche art von schnell booten sind verboten!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Landen in Kavala nur mit erlaubnis der Polizei am Landeplatz<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Stell dein Fahrzeug ordentlich ab!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules", 
				"
				Im Side Chat wird nicht gesprochen!<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Bei RDM gibt es nur 1 verwahnung dann BAN!<br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				Du darfst erst nach 15 min wieder zu deinem Todes ort zurück kehren!<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Don't Be A Dick!", 
				"
				Nervt keine anderen spieler!<br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Alle Regeln findest du in unserem Forum ! www.Folgt Noch.de!<br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				Wenn ein Banküberfall stad findet, verlassen alle Polizisten auf der stelle ihre posten und fahren zur Bank!<br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				Alle Regeln findest du in unserem Forum ! www.Folgt Noch.de!<br/>licopters cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				Immer mindestens 3 Beamte!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				Patrollen in Kavala können eben so von Rekruten durch geführt werden mit absprache eines höher rägingen!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Es müssen immer mindestens 2 Beamte an einem Checkpoint stehen!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				Jeder Rang hat seine eigenen Fahrzeuge, denn noch sollte der einsatz von gepanzerten Fahrzeugen unterlassen werden!<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Geschwindigkeit", 
				"
				In Hauptstädten: 30<br/>
				Hauptstraßen: 120Km/h<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zuordnung", 
				"
				Alle Regeln findest du in unserem Forum ! www.Folgt Noch.de! !<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gefägnis und Tickets",
				"
				Setzt angemessene straf zeiten!<br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Legale Waffen", 
				"
				Legalle Civ Waffen (Mit Waffenschein):<br/>
				1. P07<br/>
				3. ACP-C2<br/>
				5. PDW2000<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Einsatz von Waffen",
				"
				Nur in Gefahren Situazionen darf scharf gefeuert werden !<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Razzien",
				"
				Razzien dürfen nur mit mindestens 4 Cops durchgefürhrt werden, die verantwortung besitzt der Rang höchste!<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Rangkette",
				"
				Rangkette:<br/>
				1. Rekruten<br/>
				2. Polizisten<br/>
				3. Polizeichef<br/>
				4. SEK<br/>
				5. GSG9<br/>
				6. SEK-M<br/>
				7. ADMINS<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Sonstiges",
				"
				Alle Regeln findest du in unserem Forum ! Folgt Noch! !<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regeln",
				"
				1. Alle Polizisten müssen sich auf dem TeamSpeak befinden wärend sie als Polizist eingeloggt sind.<br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen Regeln",
				"
				Für dich einfach nicht Scheiße auf troling is auch als Rebell nicht erlaubt!<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				Eine Gang gehört zusammen im gefächt darf jeder der zur angreifenden gang gehört erschossen werden!<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				Fahrzuge mit + sind immer Illegal der Rest nur in Kavalla<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad+<br/>
				5. Ifrit-HMG+<br/>
				6. Hunter-HMG+<br/>
				7. Strider<br/>
				8. Polizei Hunter+<br/>
				9. Polizei Limo+<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"
				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 EBR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced Rock40 (Tazer)<br/>
				9. Sprengstoff<br/>
				10. Zafir/Mk200<br/>
				11. M320 LRR<br/>
				12. Vermin ACP<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Rohstoffe",
				"
				Die Folgenden Rohstoffe sind Illegal:<br/><br/>
				1. Schildkröten<br/>
				2. Kokain<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/>
				6. Meth<br/>
				7. Moonshine<br/>
				8. GoldBarren<br/>
				9. Uran III<br/>
				10. Nieren<br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Altis Steuerung",
				"
				Z: Spieler Menü<br/>
				U: Fahrzeuge auf/zuschließen<br/>
				U: Häuser Öffnen/Schließen<br/>
				F: Polizei Sirene<br/>
				T: Vehicle Trunk<br/>
				Ö: Polizei Warnung<br/>
				Ä: Cop Schranken öffnen<br/>
				O: Cops Nagelbänder legen<br/>
				^: Spitzhacke<br/>
				Left Shift + 1: Telefon<br/>
				Left Shift + 2: WantedList<br/>
				Left Shift + 3: Anzeige erstatten<br/>
				Left Shift + R: Festnehmen<br/>
				Left Shift + G: Ergeben<br/>
				Left Shift + V: Knockout<br/>
				Left Shift + O: Civ Restrain<br/>
				Left Shift + Space: Springen<br/>
				Left Shift + H: Waffe Holstern<br/>
				Left Windows: Housing option<br/>
				Left Windows: Farmen an Feldern<br/>
				Left Windows: Spieler Interaktionsmenü<br/>
				"
		]
	];