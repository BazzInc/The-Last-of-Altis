/*

    Fragt ab, ob der ausführende Spieler für diese Aktion genug Rechte besitzt.
    
    Returns boolean

*/
disableSerialization;

private[];


if(serverCommandAvailable "#kick") exitWith
{
    systemChat "Du bist authentifiziert.";
    true;
};

if(!(createDialog "admin_pw")) exitWith {};

false;


