_Cleanup = true;

if (_Cleanup) then {

	hintSilent "Loot Despawning";
	sleep 5;
	deleteVehicle nearestObject [player, "CUP_TKBasicAmmunitionBox_EP1"];
};