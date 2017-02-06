waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayaddEventHandler ["KeyDown", "_this call rDM_fnc_keyHandler"];