#include "script_macros.hpp"
/*
    File: init.sqf
    Author: Bryan "Tonic" Boardwine

    Edit: Nanou for HeadlessClient optimization.
    Please read support for more informations.

    Description:
    Initialize the server and required systems.
*/
private ["_dome","_rsb","_timeStamp","_extDBNotLoaded"];
DB_Async_Active = false;
DB_Async_ExtraLock = false;
rDM_server_isReady = false;
_extDBNotLoaded = "";
serv_sv_use = [];
publicVariable "rDM_server_isReady";

/*
    Prepare the headless client.
*/
rDM_HC_isActive = false;
publicVariable "rDM_HC_isActive";
HC_rDM = false;
publicVariable "HC_rDM";

if (EXTDB_SETTING(getNumber,"HeadlessSupport") isEqualTo 1) then {
    [] execVM "\rDM_server\initHC.sqf";
};

/*
    Prepare extDB before starting the initialization process
    for the server.
*/

if (isNil {uiNamespace getVariable "rDM_sql_id"}) then {
    rDM_sql_id = round(random(9999));
    CONSTVAR(rDM_sql_id);
    uiNamespace setVariable ["rDM_sql_id",rDM_sql_id];
        try {
        _result = EXTDB format ["9:ADD_DATABASE:%1",EXTDB_SETTING(getText,"DatabaseName")];
        if (!(_result isEqualTo "[1]")) then {throw "extDB3: Error with Database Connection"};
        _result = EXTDB format ["9:ADD_DATABASE_PROTOCOL:%2:SQL:%1:TEXT2",FETCH_CONST(rDM_sql_id),EXTDB_SETTING(getText,"DatabaseName")];
        if (!(_result isEqualTo "[1]")) then {throw "extDB3: Error with Database Connection"};
    } catch {
        diag_log _exception;
        _extDBNotLoaded = [true, _exception];
    };
    if (_extDBNotLoaded isEqualType []) exitWith {};
    EXTDB "9:LOCK";
    diag_log "extDB3: Connected to Database";
} else {
    rDM_sql_id = uiNamespace getVariable "rDM_sql_id";
    CONSTVAR(rDM_sql_id);
    diag_log "extDB3: Still Connected to Database";
};


if (_extDBNotLoaded isEqualType []) exitWith {
    rDM_server_extDB_notLoaded = true;
    publicVariable "rDM_server_extDB_notLoaded";
};
rDM_server_extDB_notLoaded = false;
publicVariable "rDM_server_extDB_notLoaded";


_timeStamp = diag_tickTime;
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "---------------------------------- Starting rDM Server Init ---------------------------------";
diag_log "------------------------------------------ Version 1.0.201 -------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";



[8,true,12] execFSM "\rDM_server\FSM\timeModule.fsm";

rDM_adminLevel = 0;
rDM_Blacklist = 0;

/* Setup radio channels for west/independent/civilian */
rDM_radio_west = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
rDM_radio_civ = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];
rDM_radio_indep = radioChannelCreate [[0, 0.95, 1, 0.8], "Side Channel", "%UNIT_NAME", []];


/* Tell clients that the server is ready and is accepting queries */
rDM_server_isReady = true;
publicVariable "rDM_server_isReady";


diag_log "----------------------------------------------------------------------------------------------------";
diag_log format ["               End of Altis rDM Server Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";
