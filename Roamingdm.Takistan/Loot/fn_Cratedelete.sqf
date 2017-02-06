_Cleanup = true;

if (_Cleanup) then {

	hintSilent "Loot Despawning";
	sleep 1;
	deleteVehicle nearestObject [player, "CUP_TKBasicAmmunitionBox_EP1"];
};