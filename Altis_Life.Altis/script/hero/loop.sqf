while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "script\hero\activate.sqf";


  waitUntil {!alive player};
};