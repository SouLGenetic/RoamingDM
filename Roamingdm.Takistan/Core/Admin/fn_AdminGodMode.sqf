
/*
	Author: Genetic
	Date: 29/04/17
	desc: god/ungod admin
*/
if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then{
closeDialog 0;
if (rDM_God) then {
	rDM_god = false;
    hint "GodMode: Off";
    player allowDamage true;
} else {
    rDM_god = true;
    hint "GodMode: On";
    player allowDamage false;
	};
} else {closeDialog 0;
hint parseText format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
diag_log format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
};