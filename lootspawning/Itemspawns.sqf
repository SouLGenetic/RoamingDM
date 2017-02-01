/*
    Author = Genetic
    Filename = Itemspawns.sqf
    Desription = randomly creates guns in and around buildings
*/
 
private ["_gunList", "_magList","_i", "_c", "_rNum", "_houses"];
 
_maxweps = (random 5);
 
_gunList = ["CUP_srifle_M14", "CUP_arifle_FNFAL", "CUP_arifle_AK47"];
 
_magList = ["10Rnd_338_Mag", "11Rnd_45ACP_Mag", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110", "CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1", "30Rnd_556x45_Stanag", "20Rnd_556x45_UW_mag"];
 
_items = ["CUP_TKBasicAmmunitionBox_EP1"];
 
 
 
_debug = true;
 
_houses = getPos player nearObjects ["House", 100];
 
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
     _item = _items select floor(random(count _items));
     _loot = _item createVehicle [0,0,0];
     _loot setVehicleVarName "loot"; loot = _loot;
     _loot allowDamage false;
     clearWeaponCargoGlobal loot;
     clearBackpackCargoGlobal loot;
     clearMagazineCargoGlobal loot;
    clearItemCargoGlobal loot;
     _loot addWeaponCargoGlobal  [_selGun,1];
      _loot addMagazineCargoGlobal [_selMag,1];
     _loot setPos (_x buildingPos _ranNum);
     _loot setPos (loot modelToWorld [0,0,1]);
 
 
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
 
sleep 0.123;
 
} forEach _houses;
 
     sleep 500;
     deleteVehicle loot;
