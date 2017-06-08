if (!FreezeCall) then {
	if (!Frozen) then {
		Frozen=true;
		player setVariable ["Frozen", true, true];
		while { player getVariable ["Frozen", false] }  do {
			player playMove "AmovPercMstpSnonWnonDnon_EaseIn";
			player playMove "AmovPercMstpSnonWnonDnon_EaseOut";
			hintSilent "You have been frozen by an ADMIN";
			if (((!alive player) || (player getVariable["onkill",FALSE]))) then {
			player setVariable ["Frozen", false, true];
			};
		};
		player playMoveNow "AmovPercMstpSnonWnonDnon_EaseOut"; //Animation out
	}
	else
	{
		Frozen=false;
		player setVariable ["Frozen", false, true]; //Set surrender to true
		player playMoveNow "AmovPercMstpSnonWnonDnon_EaseOut"; //Animation out
		hintSilent "Unfrozen!";
	};
};
FreezeCall = false;