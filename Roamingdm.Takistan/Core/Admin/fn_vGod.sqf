
/*
	Author: Genetic
	Date: 29/04/17
	desc: god/ungod admin
*/
_curobj = cursorTarget;
if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then{
closeDialog 0;
if (isNull _curobj) exitWith {hint "Bad Target!"};
_Valid = if ((_curobj isKindOf "landVehicle") || (_curobj isKindOf "Ship") || (_curobj isKindOf "Air")) then {true} else {false};
if (!_Valid) exitWith {hint "Invalid Target"};
if (rDM_vGod) then {
	rDM_vGod = false;
    hint "vGodMode: Off";
    cursorTarget allowDamage true;
};
if (!rDM_vGod) then {
    rDM_vGod = true;
    hint "vGodMode: On";
    cursorTarget allowDamage false;
		};
} else {closeDialog 0;
hint parseText format["%1(%2) Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName, getPlayerUID player];
diag_log format["%1 (%2) Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName, getPlayerUID player];
};