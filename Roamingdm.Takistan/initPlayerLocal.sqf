diag_log "--------------------------------------------------------------------";
diag_log "-------------------Starting RoamingDM Client------------------------";
diag_log "----------------------------Version 1.1-----------------------------";
diag_log "-----------------------Written By Genetic---------------------------";
diag_log "--------------------------------------------------------------------";
diag_log "----------------------Disabling Player Fatigue----------------------";
player enableFatigue false;
diag_log "----------------------Player Fatigue Disabled-----------------------";


diag_log "-------------------------Setup Clientside---------------------------";
[] execVM "Core\init.sqf";
diag_log "------------------------Client Setup Complete-----------------------";
