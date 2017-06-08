#include "..\..\shorts.hpp"
/*
    File: fn_updatePartial.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Sends specific information to the server to update on the player,
    meant to keep the network traffic down with large sums of data flowing
    through remoteExec
*/
private ["_mode","_packet","_array","_flag"];
_mode = param [0,0,[0]];
_packet = [getPlayerUID player,playerSide,nil,_mode];
_array = [];
_flag = switch (playerSide) do {case west: {"Player"}; case civilian: {"civ"}; case independent: {"med"};};

switch (_mode) do {
    case 0: {
        _packet set[2,CASH];
    };

    case 1: {
        _packet set[2,BANK];
    };

    case 2: {
        [] call rDM_fnc_saveGear;
        _packet set[2,rDM_gear];
    };

    case 3: {
        _packet set[2,CASH];
        _packet set[4,BANK];
    };

};

if (rDM_HC_isActive) then {
    _packet remoteExecCall ["HC_fnc_updatePartial",HC_rDM];
} else {
    _packet remoteExecCall ["DB_fnc_updatePartial",RSERV];
};
