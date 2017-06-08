#include "..\..\shorts.hpp"
/*
    File: fn_requestReceived.sqf
    Author: Bryan "Tonic" Boardwine (Edited By Genetic For rDM_DB)
    Description:
    Called by the server saying that we have a response so let's
    sort through the information, validate it and if all valid
    set the client up.
*/
private _count = count _this;
rDM_session_tries = rDM_session_tries + 1;
if (rDM_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if (rDM_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and junk..
if (isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (_this isEqualType "") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (count _this isEqualTo 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if ((_this select 0) isEqualTo "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (!(getPlayerUID player isEqualTo (_this select 0))) exitWith {[] call SOCK_fnc_dataQuery;};

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if (!isServer && (!isNil "rDM_adminlevel" || !isNil "rDM_coplevel" || !isNil "rDM_donorlevel")) exitWith {
    [profileName,getPlayerUID player,"VariablesAlreadySet"] remoteExecCall ["SPY_fnc_cookieJar",RSERV];
    [profileName,format ["Variables set before client initialization...\nrDM_adminlevel: %1\nrDM_coplevel: %2\nrDM_donorlevel: %3",rDM_adminlevel,rDM_coplevel,rDM_donorlevel]] remoteExecCall ["SPY_fnc_notifyAdmins",RCLIENT];
    sleep 0.9;
    failMission "SpyGlass";
};

//Parse basic player information.
CASH = parseNumber (_this select 2);
BANK = parseNumber (_this select 3);
CONST(rDM_adminlevel,(_this select 4));
rDM_Blacklist = _this select 6;

rDM_gear = _this select 5;
[true] call rDM_fnc_loadGear;

rDM_session_completed = true;