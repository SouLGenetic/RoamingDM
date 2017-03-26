if (uniform player isEqualTo "rDM_t1Speed") then {
	player setAnimSpeedCoef 1.1
	};
	if (uniform player isEqualTo "rDM_t2Speed") then {
	player setAnimSpeedCoef 1.2
	};
	if (uniform player isEqualTo "rDM_t3Speed") then {
	player setAnimSpeedCoef 1.5
	};

if (uniform player in ["","CUP_U_B_USMC_MARPAT_WDL_TwoKneepads","CUP_U_B_USArmy_TwoKnee","CUP_U_B_CDF_DST_1","CUP_U_B_BAF_DDPM_Ghillie"]) then {
	player setAnimSpeedCoef 1.0
	};




uiSleep 1;
[] spawn rDM_fnc_Checks
