/*
	Author = Genetic
	Filename = Itemspawns.sqf
	Desription = randomly creates crates of loot in and around buildings
*/

private ["_gunList", "_magList","_i", "_c", "_rNum", "_houses"];



_lootrespawn = false;



_gunList = ["CUP_srifle_CZ550", "CUP_arifle_G36C_camo", "CUP_sgun_M1014", "CUP_srifle_M14", "CUP_arifle_M16A2_GL", "CUP_arifle_M16A4_Base", "CUP_lmg_M240",
"CUP_lmg_M249_E2", "CUP_arifle_M4A1", "CUP_arifle_M4A3_desert", "CUP_srifle_Mk12SPR", "CUP_arifle_Mk16_CQC_FG", "CUP_arifle_Mk16_SV", "CUP_arifle_Mk17_CQC",
"CUP_arifle_Mk20","CUP_smg_MP5A5", "CUP_srifle_SVD"];

_rareguns = ["CUP_srifle_VSSVintorez", "CUP_lmg_Mk48_des", "CUP_arifle_MG36_camo", "CUP_srifle_M110", "CUP_arifle_FNFAL_railed", "CUP_srifle_M107_Base",
"CUP_srifle_AWM_des", "CUP_srifle_LeeEnfield_rail", "CUP_srifle_M24_des"];

_easyguns = ["CUP_launch_RPG7V", "CUP_launch_RPG7V", "CUP_launch_RPG7V", "CUP_arifle_AK107", "CUP_arifle_AK107_GL", "CUP_arifle_AK47",
"CUP_arifle_AK74", "CUP_arifle_AK74_GL", "CUP_arifle_AKM", "CUP_arifle_AKS", "CUP_arifle_AKS74", "CUP_arifle_AKS74U",
"CUP_smg_bizon", "CUP_arifle_FNFAL", "CUP_srifle_LeeEnfield", "CUP_lmg_PKM", "CUP_arifle_RPK74", "CUP_arifle_Sa58V_camo", "CUP_hgun_Colt1911",
"CUP_hgun_M9", "CUP_hgun_Makarov", "CUP_hgun_SA61", "CUP_hgun_TaurusTracker455"];


_itemlist = ["ItemGPS", "MineDetector", "Medikit", "Rangefinder", "ItemRadio", "ItemCompass", "ItemWatch", "Binocular", "ItemMap"];

_rareitems = ["CUP_NVG_PVS7", "IEDUrbanSmall_Remote_Mag", "APERSMine_Range_Mag","APERSTripMine_Wire_Mag"];

_easyitems = ["SmokeShell", "HandGrenade", "SmokeShellRed", "SmokeShellGreen",
"SmokeShellBlue", "Binocular", "FirstAidKit", "FirstAidKit", "ToolKit", "ToolKit", "ToolKit"];

_attachment = ["CUP_optic_PSO_1", "CUP_optic_PSO_3", "muzzle_snds_M", "CUP_muzzle_snds_G36_desert","CUP_muzzle_snds_AWM", "CUP_muzzle_snds_M110", "CUP_muzzle_snds_M14", "CUP_muzzle_snds_M16", "CUP_muzzle_snds_SCAR_L", "CUP_muzzle_snds_SCAR_H"];

_rareatts = ["CUP_optic_GOSHAWK", "CUP_optic_NSPU", "CUP_optic_AN_PAS_13c2", "CUP_optic_AN_PAS_13c1", "CUP_optic_AN_PVS_10","CUP_optic_AN_PVS_4", "CUP_optic_Leupold_VX3", "CUP_optic_LeupoldMk4_MRT_tan"];

_easyatts = ["CUP_optic_Kobra", "CUP_muzzle_Bizon", "CUP_muzzle_PBS4", "muzzle_snds_acp", "CUP_muzzle_snds_M9","muzzle_snds_B",
"CUP_muzzle_mfsup_SCAR_L", "CUP_muzzle_mfsup_SCAR_H", "CUP_optic_CompM4", "CUP_optic_Eotech533",
"CUP_optic_HoloBlack", "CUP_optic_HoloDesert", "CUP_optic_CompM2_Black", "CUP_optic_CompM2_Desert", "CUP_optic_ACOG",
"CUP_optic_TrijiconRx01_black", "CUP_optic_TrijiconRx01_desert", "CUP_acc_ANPEQ_15", "CUP_acc_ANPEQ_2",
"CUP_acc_Flashlight", "CUP_bipod_VLTOR_Modpod", "CUP_bipod_Harris_1A2_L", "CUP_bipod_VLTOR_Modpod", "CUP_bipod_Harris_1A2_L"];

_bags = ["CUP_B_AlicePack_Khaki", "CUP_B_Bergen_BAF", "CUP_B_CivPack_WDL", "CUP_B_RPGPack_Khaki", "CUP_B_AssaultPack_ACU",
"CUP_B_AssaultPack_Coyote", "CUP_B_USPack_Coyote"];



_items = ["CUP_TKBasicAmmunitionBox_EP1"];

_debug = true;

_houses = nearestObjects [[5215,6150,0],["House","Building"], 4500];

_i = 0;

{
	_c = 0;

 while { format ["%1", _x buildingPos _c] != "[0,0,0]" } do {_c = _c + 1};
 if (_c > 0) then
 {

 _maxMags = floor(random 5) + 1;
 _bagchance = floor(random 100);
 _gunChance = floor(random 100);
 _itemChance = floor(random 100);
 _attChance = floor(random 100);
 _rarity = [1,1,1,1,1,2,2,2,3,3];
 _rare = _rarity call bis_fnc_selectRandom;
 _itemrare = _rarity call bis_fnc_selectRandom;
 _attrare = _rarity call bis_fnc_selectRandom;

  _ranNum = floor(random _c);
  _selGuneasy = _easyguns call bis_fnc_selectRandom;
  _selGunnorm = _gunList call bis_fnc_selectRandom;
  _selGunrare = _rareguns call bis_fnc_selectRandom;
  _magazines = getArray (configFile / "CfgWeapons" / _selGuneasy / "magazines");
  _magazinesnorm = getArray (configFile / "CfgWeapons" / _selGunnorm / "magazines");
  _magazinesrare = getArray (configFile / "CfgWeapons" / _selGunrare/ "magazines");
  _magazineClass = _magazines call bis_fnc_selectRandom;
  _magazineClassnorm = _magazinesnorm call bis_fnc_selectRandom;
  _magazineClassrare = _magazinesrare call bis_fnc_selectRandom;
  _ranItem = _easyitems call bis_fnc_selectRandom;
  _ranAtt = _easyatts call bis_fnc_selectRandom;
  _normItem = _itemlists call bis_fnc_selectRandom;
  _normAtt = _attachment call bis_fnc_selectRandom;
  _rareItem = _rareitems call bis_fnc_selectRandom;
  _rareAtt = _rareatts call bis_fnc_selectRandom;
  _ranBag = _bags select floor(random(count _bags));
  _item = _items select floor(random(count _items));
  _loot = _item createVehicle [0,0,0];
  _loot setVehicleVarName "loot"; loot = _loot;
  _loot allowDamage false;
  clearWeaponCargoGlobal loot;
  clearBackpackCargoGlobal loot;
  clearMagazineCargoGlobal loot;
  _loot setPos (_x buildingPos _ranNum);
  _loot setPos (loot modelToWorld [0,0,1]);

 if (_gunChance <= 70) then {
 if (_rare isEqualTo 1) then {
 _loot addWeaponCargoGlobal [_selGuneasy,1];
 _loot addMagazineCargoGlobal [_magazineClass,_maxMags];
  } else {
  if (_rare isEqualTo 2) then {
 _loot addWeaponCargoGlobal [_selGunnorm,1];
 _loot addMagazineCargoGlobal [_magazineClassnorm,_maxMags];
  } else {
  if (_rare isEqualTo 3) then {
 _loot addWeaponCargoGlobal [_selGunrare,1];
 _loot addMagazineCargoGlobal [_magazineClassrare,_maxMags];
 };
 };
 };
  };

  if (_itemChance <= 50) then {
 if (_itemrare isEqualTo 1) then {
  _loot addItemCargoGlobal [_ranItem,1];
  } else {
  if (_itemrare isEqualTo 2) then {
  _loot addItemCargoGlobal [_normItem,1];
  } else {
  if (_itemrare isEqualTo 3) then {
  _loot addItemCargoGlobal [_rareItem,1];
 };
 };
 };
};


  if (_attChance <= 95) then {
 if (_attrare isEqualTo 1) then {
  _loot addItemCargoGlobal [_ranAtt,1];
  } else {
  if (_attrare isEqualTo 2) then {
  _loot addItemCargoGlobal [_normAtt,1];
  } else {
  if (_attrare isEqualTo 3) then {
  _loot addItemCargoGlobal [_rareAtt,1];
 };
 };
 };
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

uisleep 0.1;

} forEach _houses;

uisleep 1;

loot enableSimulationGlobal false;

if (_lootrespawn) then {

uisleep 10800;
deleteVehicle loot;
uiSleep 5;
[] spawn rDM_fnc_Itemspawns;
} else {
if !(_lootrespawn) exitwith{};
};





