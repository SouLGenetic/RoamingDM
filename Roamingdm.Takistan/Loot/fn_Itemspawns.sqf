#include "..\shorts.hpp"
/*
	Author = Genetic
	Filename = Itemspawns.sqf
	Desription = randomly creates crates of loot in and around buildings
*/

private ["_gunList", "_magList","_i", "_c", "_rNum", "_houses"];



_lootrespawn = false;


/*
Array Setup
*/
_gunList = LT_gunlist;
_rareguns = LT_rareguns;
_easyguns = LT_easyguns;
_itemlist = LT_itemlist;
_rareitems = LT_rareitems;
_easyitems = LT_easyitems;
_attachment = LT_attachment;
_rareatts = LT_rareatts;
_easyatts = LT_easyatts;
_bags = LT_bags;


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
 _marker setMarkerColor 'ColorGreen';
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
