if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then {

closeDialog 0;

player setVariable ["Marks", false, true];

uisleep 0.5;

deleteMarkerLocal "USMCMark";
deleteMarkerLocal "USMCMark1";
deleteMarkerLocal "USMCMark2";
deleteMarkerLocal "USMCMark3";
deleteMarkerLocal "USMCMark4";
deleteMarkerLocal "USMCMark5";
deleteMarkerLocal "USMCMark6";

deleteMarkerLocal "USMark";
deleteMarkerLocal "USMark1";
deleteMarkerLocal "USMark2";
deleteMarkerLocal "USMark3";
deleteMarkerLocal "USMark4";
deleteMarkerLocal "USMark5";
deleteMarkerLocal "USMark6";

deleteMarkerLocal "AfganMark";
deleteMarkerLocal "AfganMark1";
deleteMarkerLocal "AfganMark2";
deleteMarkerLocal "AfganMark3";
deleteMarkerLocal "AfganMark4";
deleteMarkerLocal "AfganMark5";
deleteMarkerLocal "AfganMark6";

deleteMarkerLocal "SniperMark";
deleteMarkerLocal "SniperMark1";
deleteMarkerLocal "SniperMark2";
deleteMarkerLocal "SniperMark3";
deleteMarkerLocal "SniperMark4";
deleteMarkerLocal "SniperMark5";
deleteMarkerLocal "SniperMark6";
}
else
{closeDialog 0;
hint parseText format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
diag_log format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
};