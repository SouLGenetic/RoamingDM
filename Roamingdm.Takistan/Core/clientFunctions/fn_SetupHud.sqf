cutRsc ["ROAMHUD", "PLAIN", 2, false];
[] call rDM_fnc_UpdateHud;

[] spawn
{
    private ["_dam"];
    for "_i" from 0 to 1 step 0 do {
        _dam = damage player;
        waitUntil {!((damage player) isEqualTo _dam)};
        [] call rDM_fnc_UpdateHud;
    };
};