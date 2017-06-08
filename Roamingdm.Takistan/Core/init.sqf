#include "..\shorts.hpp"
/*
    File: init.sqf
    Description:
    client initialization file
*/




private ["_handle","_timeStamp","_extDB_notLoaded"];
rDM_firstSpawn = true;
rDM_session_completed = false;
0 cutText[localize "STR_Init_ClientSetup","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
_extDB_notLoaded = "";
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "-------------------------------------- Starting rDM Client Init ----------------------------------";
diag_log "------------------------------------------ Version 1.0.201 -------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";

diag_log "::rDM Client:: Initialization Variables.";
[] call compile preprocessFileLineNumbers "Core\initClient\fn_Vars.sqf";

diag_log "::rDM Client:: Received server functions.";
0 cutText [localize "STR_Init_ServerReady","BLACK FADED"];
0 cutFadeOut 99999999;

[] call rDM_fnc_Action;


diag_log "::rDM Client:: Waiting for the server to be ready..";
waitUntil {!isNil "rDM_server_isReady"};

if (rDM_server_extDB_notLoaded) exitWith {
    999999 cutText [localize "STR_Init_ExtdbFail","BLACK FADED"];
    999999 cutFadeOut 99999999;
};

waitUntil {rDM_server_isReady};
[] call SOCK_fnc_dataQuery;
waitUntil {rDM_session_completed};
0 cutText[localize "STR_Init_ClientFinish","BLACK FADED"];
0 cutFadeOut 9999999;

//Blacklisting
if (rDM_Blacklist) exitWith {
    ["Blacklisted",false,true] call BIS_fnc_endMission;
    uisleep 30;
};


[] spawn rDM_fnc_escSave;

waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayaddEventHandler ["KeyDown", "_this call rDM_fnc_keyHandler"];

//Spawn checks for boost such as speed via uniform
[]spawn rDM_fnc_Checks;

//Sanity
[] spawn rDM_fnc_Sanity;


//Intro dialog
createDialog "infoDialog";

//HUD
0 cutText ["","BLACK IN"];
[] call rDM_fnc_SetupHud;

//playername var
player setVariable ["Profile",profileName,true];

//hide packs
waitUntil {uniform player isEqualTo "CUP_U_B_BAF_DDPM_Ghillie"};
while {true} do {
        private["_bpack"];
        while{true} do
        {
            uisleep 1;
            waitUntil {backpack player != ""};
            _bpack = backpack player;
            if((getobjecttextures (unitBackpack player)) select 0 != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
            if((getobjecttextures (unitBackpack player)) select 0 != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
            waitUntil {backpack player != _bpack};
        };
    };
