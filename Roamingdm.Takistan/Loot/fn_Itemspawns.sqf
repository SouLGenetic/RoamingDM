/*
	Author = Genetic
	Filename = Itemspawns.sqf
	Desription = randomly creates crates of loot in and around buildings
*/

private ["_gunList", "_magList","_i", "_c", "_rNum", "_houses"];

_maxweps = floor(random 5) + 1;

_lootrespawn = false;



_gunList = ["CUP_arifle_AK107", "CUP_arifle_AK107_GL", "CUP_arifle_AK47", "CUP_arifle_AK74", "CUP_arifle_AK74_GL", "CUP_arifle_AKM",
"CUP_arifle_AKS", "CUP_arifle_AKS74", "CUP_arifle_AKS74U", "CUP_smg_bizon", "CUP_srifle_CZ550", "CUP_arifle_FNFAL", "CUP_arifle_FNFAL_railed",
"CUP_arifle_G36C_camo", "CUP_srifle_AWM_des", "CUP_srifle_LeeEnfield", "CUP_srifle_LeeEnfield_rail", "CUP_sgun_M1014", "CUP_srifle_M107_Base",
"CUP_srifle_M110", "CUP_srifle_M14", "CUP_arifle_M16A2_GL", "CUP_arifle_M16A4_Base", "CUP_srifle_M24_des", "CUP_lmg_M240", "CUP_lmg_M249_E2",
"CUP_arifle_M4A1", "CUP_arifle_M4A3_desert", "CUP_arifle_MG36_camo", "CUP_lmg_Mk48_des", "CUP_srifle_Mk12SPR", "CUP_arifle_Mk16_CQC_FG",
"CUP_arifle_Mk16_SV", "CUP_arifle_Mk17_CQC", "CUP_arifle_Mk20", "CUP_smg_MP5A5", "CUP_lmg_PKM", "CUP_arifle_RPK74", "CUP_arifle_Sa58V_camo",
"CUP_srifle_SVD", "CUP_srifle_VSSVintorez", "CUP_launch_RPG7V", "CUP_hgun_Colt1911", "CUP_hgun_M9", "CUP_hgun_Makarov", "CUP_hgun_SA61",
"CUP_hgun_TaurusTracker455"];

_magList = ["CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_545x39_AK_M", "CUP_30Rnd_545x39_AK_M",
"CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_545x39_AK_M", "CUP_30Rnd_545x39_AK_M", "CUP_64Rnd_9x19_Bizon_M",
"CUP_5x_22_LR_17_HMR_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", "CUP_30Rnd_556x45_G36", "CUP_5Rnd_86x70_L115A1",
"CUP_10x_303_M", "CUP_10x_303_M", "CUP_8Rnd_B_Beneli_74Slug", "CUP_10Rnd_127x99_M107", "CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_DMR",
"CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_5Rnd_762x51_M24", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
"CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_100Rnd_556x45_BetaCMag",
"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_20Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag",
"CUP_20Rnd_762x51_B_SCAR", "CUP_20Rnd_762x51_B_SCAR", "CUP_30Rnd_9x19_MP5", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",
"CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", "CUP_30Rnd_Sa58_M_TracerG", "CUP_10Rnd_762x54_SVD_M", "CUP_10Rnd_9x39_SP5_VSS_M",
"CUP_PG7V_M", "CUP_7Rnd_45ACP_1911", "CUP_15Rnd_9x19_M9", "CUP_8Rnd_9x18_Makarov_M", "CUP_20Rnd_B_765x17_Ball_M", "CUP_6Rnd_45ACP_M"];

_itemlist = [ "CUP_NVG_PVS7", "ItemMap", "ItemGPS", "ItemRadio", "ItemCompass", "ItemWatch", "ToolKit", "MineDetector", "Medikit", "FirstAidKit", "Binocular", "Rangefinder", "CUP_TimeBomb_M", "IEDUrbanSmall_Remote_Mag", "APERSMine_Range_Mag", "APERSTripMine_Wire_Mag", "SmokeShell", "HandGrenade", "SmokeShellRed", "SmokeShellGreen", "SmokeShellBlue"];

_attachment = ["CUP_optic_GOSHAWK", "CUP_optic_Kobra", "CUP_optic_NSPU", "CUP_optic_PSO_1", "CUP_optic_PSO_3", "CUP_muzzle_Bizon",
"CUP_muzzle_PBS4", "muzzle_snds_acp", "CUP_muzzle_snds_M9","muzzle_snds_B", "muzzle_snds_M", "CUP_muzzle_snds_G36_desert",
"CUP_muzzle_snds_AWM", "CUP_muzzle_snds_M110", "CUP_muzzle_snds_M14", "CUP_muzzle_snds_M16", "CUP_muzzle_mfsup_SCAR_L",
"CUP_muzzle_snds_SCAR_L", "CUP_muzzle_mfsup_SCAR_H", "CUP_muzzle_snds_SCAR_H"];

_bags = ["CUP_B_AlicePack_Khaki", "CUP_B_Bergen_BAF", "CUP_B_CivPack_WDL", "CUP_B_RPGPack_Khaki", "CUP_B_AssaultPack_ACU",
"CUP_B_AssaultPack_Coyote", "CUP_B_USPack_Coyote"];

_bagchance = floor(random 100);
_gunChance = floor(random 100);
_itemChance = floor(random 100);
_attChance = floor(random 100);

_items = ["CUP_TKBasicAmmunitionBox_EP1"];

_debug = true;

_houses = nearestObjects [[5215,6150,0],["House","Building"], 10000];

_i = 0;

{
	_c = 0;

 while { format ["%1", _x buildingPos _c] != "[0,0,0]" } do {_c = _c + 1};
 if (_c > 0) then
 {

     _ranNum = floor(random _c);
     _selGun = _gunList call bis_fnc_selectRandom;
     _arrNum = _gunList find _selGun;
     _selMag = _maglist select _arrNum;
     _ranItem = _itemlist select floor(random(count _itemlist));
     _ranAtt = _attachment select floor(random(count _attachment));
     _ranBag = _bags select floor(random(count _bags));
     _item = _items select floor(random(count _items));
     _loot = _item createVehicle [0,0,0];
     _loot setVehicleVarName "loot"; loot = _loot;
     _loot allowDamage false;
     clearWeaponCargoGlobal loot;
     clearBackpackCargoGlobal loot;
     clearMagazineCargoGlobal loot;
     clearItemCargoGlobal loot;
     loot addEventHandler ["ContainerOpened", {hintSilent "After you exit this crate it will delete!";}];
     loot addEventHandler ["ContainerClosed",{[] spawn rDM_fnc_cratedelete;}];
     _loot setPos (_x buildingPos _ranNum);
     _loot setPos (loot modelToWorld [0,0,1]);

      if (_gunChance <= 70) then {
      _loot addWeaponCargoGlobal  [_selGun,1];
      _loot addMagazineCargoGlobal [_selMag,_maxweps];
     };

     if (_itemChance <= 50) then {
     _loot addItemCargoGlobal [_ranItem,1];
     };

     if (_attChance <= 95) then {
     _loot addItemCargoGlobal [_ranAtt,1];
     };

     if (_bagchance <= 20) then {
      _loot addBackpackCargoGlobal [_ranBag,1];
     };

   if (_debug) then
   {
      _marker = format ['_marker%1',_i];
      _mkr = createMarker[_marker, getPos _loot];
      _marker setMarkerType 'hd_dot';
      _marker setMarkerSize[1, 1];
      _marker setMarkerDir 1;
      _marker setMarkerColor 'ColorOrange';
      _marker setMarkerText '';
      _i = _i + 1;

   };
};

 _c = 0;

uisleep 0.0012;

} forEach _houses;

uisleep 1;

loot enableSimulationGlobal false;

if (_lootrespawn) then {

uisleep 10800;

[] spawn rDM_fnc_Itemspawns;
} else {
if !(_lootrespawn) exitwith{};
};





