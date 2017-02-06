_usmc = ["USMC_Soldier","USMC_Soldier_1","USMC_Soldier_2","USMC_Soldier_3","USMC_Soldier_4","USMC_Soldier_5","USMC_Soldier_6"];
_USA = ["US_Soldier","US_Soldier_1","US_Soldier_2","US_Soldier_3","US_Soldier_4","US_Soldier_5","US_Soldier_6"];
_afg = ["Afgan_Soldier","Afgan_Soldier_1","Afgan_Soldier_2","Afgan_Soldier_3","Afgan_Soldier_4","Afgan_Soldier_5","Afgan_Soldier_6"];
_sniper = ["Sniper","Sniper_1","Sniper_2","Sniper_3","Sniper_4","Sniper_5","Sniper_6"];

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
if (str(player) in _usmc) then {
_Uniform = ["CUP_U_B_USMC_MARPAT_WDL_TwoKneepads"];
player forceaddUniform (selectRandom _Uniform);
for "_i" from 1 to 3 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {player addItemToUniform "CUP_8Rnd_9x18_Makarov_M";};
player addVest "CUP_V_B_MTV";
player addHeadgear "CUP_H_USMC_HelmetWDL";
player addBackpack "CUP_B_AssaultPack_Coyote";
player addWeapon "CUP_hgun_Makarov";
player linkItem "ItemMap";
player enableFatigue false;
};
	if (str(player) in _USA) then {
_Uniform = ["CUP_U_B_USArmy_TwoKnee"];
player forceaddUniform (selectRandom _Uniform);
for "_i" from 1 to 3 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {player addItemToUniform "CUP_8Rnd_9x18_Makarov_M";};
player addVest "CUP_V_B_IOTV_tl";
player addHeadgear "CUP_H_USArmy_HelmetMICH_earpro";
player addBackpack "CUP_B_AssaultPack_ACU";
player addWeapon "CUP_hgun_Makarov";
player linkItem "ItemMap";
diag_log "----------Finished Inventory Setup----------";
player enableFatigue false;
	};
	if (str(player) in _afg) then {
_Uniform = ["CUP_U_B_CDF_DST_1"];
player forceaddUniform (selectRandom _Uniform);
for "_i" from 1 to 3 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {player addItemToUniform "CUP_8Rnd_9x18_Makarov_M";};
player addVest "CUP_V_CDF_6B3_4_DST";
player addHeadgear "CUP_H_CDF_H_PASGT_DST";
player addBackpack "CUP_B_AssaultPack_Coyote";
player addWeapon "CUP_hgun_Makarov";
player linkItem "ItemMap";
diag_log "----------Finished Inventory Setup----------";
player enableFatigue false;
	};

	if (str(player) in _sniper) then {
_Uniform = ["CUP_U_B_BAF_DDPM_Ghillie"];
player forceaddUniform (selectRandom _Uniform);
for "_i" from 1 to 3 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {player addItemToUniform "CUP_8Rnd_9x18_Makarov_M";};
player addVest "CUP_V_BAF_Osprey_Mk2_DDPM_Empty";
player addBackpack "CUP_B_AssaultPack_Coyote";
player addWeapon "CUP_hgun_Makarov";
player linkItem "ItemMap";
diag_log "----------Finished Inventory Setup----------";
player enableFatigue false;
	};
diag_log "----------Finished Inventory Setup----------";


