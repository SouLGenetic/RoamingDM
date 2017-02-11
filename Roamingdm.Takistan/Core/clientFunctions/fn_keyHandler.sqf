
private ["_handled","_shift","_alt","_code","_ctrl","_ctrlKey"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_handled = false;




switch (_code) do
{

	//antiside + global
	if((_code in (actionKeys "PushToTalk") || _code in (actionKeys "PushToTalkSide") || _code in (actionKeys "PushToTalkAll") || _code in (actionKeys "PushToTalkDirect") || _code in (actionKeys "VoiceOverNet"))) exitWith {   if (currentChannel in [0, 1, 2]) then    { titleText ["Please no voice in SIDE, GLOBAL OR COMMAND channel.","PLAIN", 0]; setCurrentChannel 5;};};


	// - fade
	 case 12: {
        switch (soundVolume) do {
	    case 1: {1 fadeSound 0.9; hint "90% VOL"};
	    case 0.9: {1 fadeSound 0.8; hint "80% VOL"};
	    case 0.8: {1 fadeSound 0.7; hint "70% VOL"};
	    case 0.7: {1 fadeSound 0.6; hint "60% VOL"};
	    case 0.6: {1 fadeSound 0.5; hint "50% VOL"};
	    case 0.5: {1 fadeSound 0.4; hint "40% VOL"};
	    case 0.4: {1 fadeSound 0.3; hint "30% VOL"};
	    case 0.3: {1 fadeSound 0.2; hint "20% VOL"};
	    case 0.2: {1 fadeSound 0.1; hint "10% VOL"};
	    case 0.1: {hint "You are at the lowest volume!"};
            default {};
            };
        };
	// = up
        case 13: {
        switch (soundVolume) do {
	    case 0.1: {1 fadeSound 0.2; hint "20% VOL"};
	    case 0.2: {1 fadeSound 0.3; hint "30% VOL"};
	    case 0.3: {1 fadeSound 0.4; hint "40% VOL"};
	    case 0.4: {1 fadeSound 0.5; hint "50% VOL"};
	    case 0.5: {1 fadeSound 0.6; hint "60% VOL"};
	    case 0.6: {1 fadeSound 0.7; hint "70% VOL"};
	    case 0.7: {1 fadeSound 0.8; hint "80% VOL"};
	    case 0.8: {1 fadeSound 0.9; hint "90% VOL"};
	    case 0.9: {1 fadeSound 1; hint "100% VOL"};
	    case 1: {hint "You are at max volume!"};
	    default {};
            };
        };



	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			curWep = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};

		if(!_shift && _ctrlKey && !isNil "curWep" && {(curWep != "")}) then {
			if(curWep in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
			player selectWeapon curWep;
			};
		};
	};
};
_handled;
