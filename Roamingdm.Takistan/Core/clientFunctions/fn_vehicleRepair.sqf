private ["_veh"];
_veh = cursorTarget;
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
		if ("ToolKit" in (items player) && (damage _veh < 1)) then {
			disableUserInput true;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (10s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (9s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (8s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (7s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (6s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (5s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (4s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (3s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (2s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			titleText ["Repairing Vehicle (1s)", "PLAIN"];
			uiSleep 1;
			player playMoveNow "Acts_carFixingWheel";
			player playActionNow "stop";
			titleText [" ", "PLAIN"];
			disableUserInput false;

			player removeItem "ToolKit";
			_veh setDamage 0;
	} else {
	hint "You need a toolkit to repair,
	Or this vehicle is beyond repair";
	};
} else {
	hint "This isn't a Vehicle...";
};
