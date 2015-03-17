// weather system script by austin(medic) -- mainly to be used with Stratis-RP:Ultimate 
//Wetterdienst mit wichtigen Infos
while {true} do {
_date = date;
//_Temp = temperatureF; busted....
_wind = wind;
_winddir = windDir;
_gusts = gusts;
_perdict2 = fog;
_perdict3 = rain;
_perdict4 = waves;
hintsilent  format ["Wetterbericht \n\n---------\n vorhersage fuer : %1    (Jahr,Monat,Tag,Stunde,Minute)\n\n  Temperatur: 35° \n Wind: %2 \n Wind Richtung: %3\n Wind Gusts: %4 \n Nebel: %5 \n Regen: %6 \n Wellengang: %7\n --------\n naechste Wetternachricht in 30 Minuten.",_date,_wind,_winddir,_gusts,_perdict2,_perdict3,_perdict4];
sleep 1800;
};