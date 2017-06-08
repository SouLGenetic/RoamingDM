diag_log "init ServerSide";
[] call compile preprocessFileLineNumbers "\rDM_Server\init.sqf";
diag_log "-----spawning loot-----";
[] spawn rDM_fnc_Itemspawns;
uisleep 200;
diag_log "-----Loot Spawn Loop Complete-----";
