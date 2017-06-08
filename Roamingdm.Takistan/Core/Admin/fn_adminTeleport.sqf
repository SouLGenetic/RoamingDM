/*
    File: fn_adminTeleport.sqf
    Author: ColinM9991 (edited by Genetic)
    Credits: To original script author(s)
    Description:
    Teleport to chosen position.
*/
if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then{
closeDialog 0;

openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call rDM_fnc_Teleport";
} else {closeDialog 0;
hint parseText format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
diag_log format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
};