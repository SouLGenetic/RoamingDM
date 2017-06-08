/*
	Author: Genetic
	Date: 29/04/17
	desc: Admin Personal Arsenal
*/
if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then{
closeDialog 0;
["Open",true] spawn BIS_fnc_arsenal;
} else {closeDialog 0;
hint parseText format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
diag_log format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
};