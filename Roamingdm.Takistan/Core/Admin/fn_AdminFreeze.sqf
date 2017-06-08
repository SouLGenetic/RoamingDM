/*
author: puffin
*/

_curobj = cursorObject;
if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then {
closeDialog 0;

FreezeCall = false;
if (!Frozen) then {
    if (player distance (cursortarget) < 5) then {
    	hint parseText format["<t size='1.5'><t color='#10a9f6'>Freeze Player</t></t><br/><br/><t size='1'>Freezing Player: Frozen By: (%1)<br/><br/>Frozen Player (UID): (%2)<br/><br/><t color='#FA4F4F'>Better Not Be Abusing This Feature</t>",profileName,getPlayerUID cursortarget];
        FreezeCall = true;
        [player] remoteExec ["rDM_fnc_Admin_freeze",_curobj];
        };
    };
} else {closeDialog 0;
hint parseText format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
diag_log format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
};