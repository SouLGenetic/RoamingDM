waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayaddEventHandler ["KeyDown", "_this call rDM_fnc_keyHandler"];

//Spawn checks for boost such as speed via uniform
[]spawn rDM_fnc_Checks;

//Intro dialog
createDialog "infoDialog";

//repairing
player addAction ["<t color='#ffe800'>Repair Vehicle</t>",{[]spawn rDM_fnc_vehicleRepair}];

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
