	player setVariable ["Brick", true, true];
	systemChat format ["player (%1) Has Been Bricked by an Admin!",profilename];
		while { player getVariable "Brick" }  do {
			player playMove "AmovPercMstpSnonWnonDnon_EaseIn"; //Animation in
			disableUserInput true;
			99999 cutText ['You Have Been Locked For Bad behaviour','black faded'];
			99999 cutFadeOut 999999999999;
			player setposatl [1e8,1e8,1e8];
			};
		player playMoveNow "AmovPercMstpSnonWnonDnon_EaseOut"; //Animation out