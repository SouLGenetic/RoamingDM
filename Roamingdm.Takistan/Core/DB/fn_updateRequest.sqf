#include "..\..\shorts.hpp"
/*
    File: fn_updateRequest.sqf
    Author: Tonic

    Description:
    Passes ALL player information to the server to save player data to the database.
*/
private ["_packet","_array","_flag","_alive","_position"];
_packet = [getPlayerUID player,(profileName),playerSide,CASH,BANK];
_array = [];
_alive = alive player;
_position = getPosATL player;
_flag = switch (playerSide) do {case west: {"Player"}; case civilian: {"civ"}; case independent: {"med"};};


_packet pushBack _array;

[] call rDM_fnc_saveGear;
_packet pushBack rDM_gear;

if (rDM_HC_isActive) then {
    _packet remoteExecCall ["HC_fnc_updateRequest",HC_rDM];
} else {
    _packet remoteExecCall ["DB_fnc_updateRequest",2];
};
