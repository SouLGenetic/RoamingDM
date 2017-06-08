/*
author: puffin
*/
_curobj = (str(cursorObject));
if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then {
closeDialog 0;
BrickCall = false;
if (!Brick) then {
    if (player distance cursortarget < 5) then {
    	hint parseText format["<t size='1.5'><t color='#38C40A'>Brick Player</t></t><br/><br/><t size='1'>Bricking Player: Bricked By: (%1)<br/><br/>Bricked Player (UID): (%2)<br/><br/><t color='#FA4F4F'>Better Not Be Abusing This Feature</t>",profileName,getPlayerUID cursortarget];
        BrickCall = true;
        [player] remoteExec ["rDM_fnc_Admin_Brick",_curobj];
    	};
	};
} else {closeDialog 0;
hint parseText format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
diag_log format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
};