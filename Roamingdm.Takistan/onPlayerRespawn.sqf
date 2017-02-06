removeAllWeapons player;
{player removeMagazine _x;} forEach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;

{
    player unassignItem _x;
    player removeItem _x;
} forEach (assignedItems player);

if (hmd player != "") then {
    player unlinkItem (hmd player);
};
diag_log "-----------Begin Inventory Setup-----------";
_Uniform = ["CUP_U_B_USMC_MARPAT_WDL_TwoKneepads", "CUP_U_B_USArmy_TwoKnee", "CUP_U_B_CDF_DST_1", "CUP_U_B_BAF_DDPM_Ghillie"];
player forceaddUniform (selectRandom _Uniform);
for "_i" from 1 to 3 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {player addItemToUniform "CUP_8Rnd_9x18_Makarov_M";};
player addVest "CUP_V_B_MTV";
player addHeadgear "CUP_H_USMC_HelmetWDL";
player addBackpack "CUP_B_AssaultPack_ACU";
player addWeapon "CUP_hgun_Makarov";
player linkItem "ItemMap";
diag_log "----------Finished Inventory Setup----------";
player enableFatigue false;