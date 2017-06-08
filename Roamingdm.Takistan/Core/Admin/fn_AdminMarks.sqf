if ((getPlayerUID player) in ["76561198095744097", "76561198071432455", "76561198111975873"]) then {
closeDialog 0;

player setVariable ["Marks", true, true];

_mark = createMarkerLocal ["USMCMark", getpos USMC_Soldier];
_mark setMarkerTypeLocal "hd_dot";
_mark setMarkerPosLocal getpos USMC_Soldier;
_mark setMarkerTextlocal format["USMC(%1)",name USMC_Soldier];
_mark setMarkerSizelocal [1, 1];
_mark setMarkerColorlocal "ColorWhite";
_mark;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMCMark" setMarkerPosLocal getpos USMC_Soldier; sleep 0.1; };
};
_mark1 = createMarkerLocal ["USMCMark1", getpos USMC_Soldier_1];
_mark1 setMarkerTypeLocal "hd_dot";
_mark1 setMarkerPosLocal getpos USMC_Soldier_1;
_mark1 setMarkerTextlocal format["USMC_1(%1)",name USMC_Soldier_1];
_mark1 setMarkerSizelocal [1, 1];
_mark1 setMarkerColorlocal "ColorWhite";
_mark1;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMCMark1" setMarkerPosLocal getpos USMC_Soldier_1; sleep 0.1; };
};
_mark2 = createMarkerLocal ["USMCMark2", getpos USMC_Soldier_2];
_mark2 setMarkerTypeLocal "hd_dot";
_mark2 setMarkerPosLocal getpos USMC_Soldier_2;
_mark2 setMarkerTextlocal format["USMC_2(%1)",name USMC_Soldier_2];
_mark2 setMarkerSizelocal [1, 1];
_mark2 setMarkerColorlocal "ColorWhite";
_mark2;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMCMark2" setMarkerPosLocal getpos USMC_Soldier_2; sleep 0.1; };
};
_mark3 = createMarkerLocal ["USMCMark3", getpos USMC_Soldier_3];
_mark3 setMarkerTypeLocal "hd_dot";
_mark3 setMarkerPosLocal getpos USMC_Soldier_3;
_mark3 setMarkerTextlocal format["USMC_3(%1)",name USMC_Soldier_3];
_mark3 setMarkerSizelocal [1, 1];
_mark3 setMarkerColorlocal "ColorWhite";
_mark3;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMCMark3" setMarkerPosLocal getpos USMC_Soldier_3; sleep 0.1; };
};
_mark4 = createMarkerLocal ["USMCMark4", getpos USMC_Soldier_4];
_mark4 setMarkerTypeLocal "hd_dot";
_mark4 setMarkerPosLocal getpos USMC_Soldier_4;
_mark4 setMarkerTextlocal format["USMC_4(%1)",name USMC_Soldier_4];
_mark4 setMarkerSizelocal [1, 1];
_mark4 setMarkerColorlocal "ColorWhite";
_mark4;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMCMark4" setMarkerPosLocal getpos USMC_Soldier_4; sleep 0.1; };
};
_mark5 = createMarkerLocal ["USMCMark5", getpos USMC_Soldier_5];
_mark5 setMarkerTypeLocal "hd_dot";
_mark5 setMarkerPosLocal getpos USMC_Soldier_5;
_mark5 setMarkerTextlocal format["USMC_5(%1)",name USMC_Soldier_5];
_mark5 setMarkerSizelocal [1, 1];
_mark5 setMarkerColorlocal "ColorWhite";
_mark5;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMCMark5" setMarkerPosLocal getpos USMC_Soldier_5; sleep 0.1; };
};
_mark6 = createMarkerLocal ["USMCMark6", getpos USMC_Soldier_6];
_mark6 setMarkerTypeLocal "hd_dot";
_mark6 setMarkerPosLocal getpos USMC_Soldier_6;
_mark6 setMarkerTextlocal format["USMC_6(%1)",name USMC_Soldier_6];
_mark6 setMarkerSizelocal [1, 1];
_mark6 setMarkerColorlocal "ColorWhite";
_mark6;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMCMark6" setMarkerPosLocal getpos USMC_Soldier_6; sleep 0.1; };
};

_markus = createMarkerLocal ["USMark", getpos US_Soldier];
_markus setMarkerTypeLocal "hd_dot";
_markus setMarkerPosLocal getpos US_Soldier;
_markus setMarkerTextlocal format["US(%1)",name US_Soldier];
_markus setMarkerSizelocal [1, 1];
_markus setMarkerColorlocal "ColorWhite";
_markus;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMark" setMarkerPosLocal getpos US_Soldier; sleep 0.1; };
};
_markus1 = createMarkerLocal ["USMark1", getpos US_Soldier_1];
_markus1 setMarkerTypeLocal "hd_dot";
_markus1 setMarkerPosLocal getpos US_Soldier_1;
_markus1 setMarkerTextlocal format["US_1(%1)",name US_Soldier_1];
_markus1 setMarkerSizelocal [1, 1];
_markus1 setMarkerColorlocal "ColorWhite";
_markus1;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMark1" setMarkerPosLocal getpos US_Soldier_1; sleep 0.1; };
};
_markus2 = createMarkerLocal ["USMark2", getpos US_Soldier_2];
_markus2 setMarkerTypeLocal "hd_dot";
_markus2 setMarkerPosLocal getpos US_Soldier_2;
_markus2 setMarkerTextlocal format["US_2(%1)",name US_Soldier_2];
_markus2 setMarkerSizelocal [1, 1];
_markus2 setMarkerColorlocal "ColorWhite";
_markus2;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMark2" setMarkerPosLocal getpos US_Soldier_2; sleep 0.1; };
};
_markus3 = createMarkerLocal ["USMark3", getpos US_Soldier_3];
_markus3 setMarkerTypeLocal "hd_dot";
_markus3 setMarkerPosLocal getpos US_Soldier_3;
_markus3 setMarkerTextlocal format["US_3(%1)",name US_Soldier_3];
_markus3 setMarkerSizelocal [1, 1];
_markus3 setMarkerColorlocal "ColorWhite";
_markus3;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMark3" setMarkerPosLocal getpos US_Soldier_3; sleep 0.1; };
};
_markus4 = createMarkerLocal ["USMark4", getpos US_Soldier_4];
_markus4 setMarkerTypeLocal "hd_dot";
_markus4 setMarkerPosLocal getpos US_Soldier_4;
_markus4 setMarkerTextlocal format["US_4(%1)",name US_Soldier_4];
_markus4 setMarkerSizelocal [1, 1];
_markus4 setMarkerColorlocal "ColorWhite";
_markus4;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMark4" setMarkerPosLocal getpos US_Soldier_4; sleep 0.1; };
};
_markus5 = createMarkerLocal ["USMark5", getpos US_Soldier_5];
_markus5 setMarkerTypeLocal "hd_dot";
_markus5 setMarkerPosLocal getpos US_Soldier_5;
_markus5 setMarkerTextlocal format["US_5(%1)",name US_Soldier_5];
_markus5 setMarkerSizelocal [1, 1];
_markus5 setMarkerColorlocal "ColorWhite";
_markus5;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMark5" setMarkerPosLocal getpos US_Soldier_5; sleep 0.1; };
};
_markus6 = createMarkerLocal ["USMark6", getpos US_Soldier_6];
_markus6 setMarkerTypeLocal "hd_dot";
_markus6 setMarkerPosLocal getpos US_Soldier_6;
_markus6 setMarkerTextlocal format["US_6(%1)",name US_Soldier_6];
_markus6 setMarkerSizelocal [1, 1];
_markus6 setMarkerColorlocal "ColorWhite";
_markus6;
[] spawn {
  while {player getVariable ["Marks", false]} do { "USMark6" setMarkerPosLocal getpos US_Soldier_6; sleep 0.1; };
};

_markaf = createMarkerLocal ["AfganMark", getpos Afgan_Soldier];
_markaf setMarkerTypeLocal "hd_dot";
_markaf setMarkerPosLocal getpos Afgan_Soldier;
_markaf setMarkerTextlocal format["Afgan(%1)",name Afgan_Soldier];
_markaf setMarkerSizelocal [1, 1];
_markaf setMarkerColorlocal "ColorWhite";
_markaf;
[] spawn {
  while {player getVariable ["Marks", false]} do { "AfganMark" setMarkerPosLocal getpos Afgan_Soldier; sleep 0.1; };
};
_markaf1 = createMarkerLocal ["AfganMark1", getpos Afgan_Soldier_1];
_markaf1 setMarkerTypeLocal "hd_dot";
_markaf1 setMarkerPosLocal getpos Afgan_Soldier_1;
_markaf1 setMarkerTextlocal format["Afgan_1(%1)",name Afgan_Soldier_1];
_markaf1 setMarkerSizelocal [1, 1];
_markaf1 setMarkerColorlocal "ColorWhite";
_markaf1;
[] spawn {
  while {player getVariable ["Marks", false]} do { "AfganMark1" setMarkerPosLocal getpos Afgan_Soldier_1; sleep 0.1; };
};
_markaf2 = createMarkerLocal ["AfganMark2", getpos Afgan_Soldier_2];
_markaf2 setMarkerTypeLocal "hd_dot";
_markaf2 setMarkerPosLocal getpos Afgan_Soldier_2;
_markaf2 setMarkerTextlocal format["Afgan_2(%1)",name Afgan_Soldier_2];
_markaf2 setMarkerSizelocal [1, 1];
_markaf2 setMarkerColorlocal "ColorWhite";
_markaf2;
[] spawn {
  while {player getVariable ["Marks", false]} do { "AfganMark2" setMarkerPosLocal getpos Afgan_Soldier_2; sleep 0.1; };
};
_markaf3 = createMarkerLocal ["AfganMark3", getpos Afgan_Soldier_3];
_markaf3 setMarkerTypeLocal "hd_dot";
_markaf3 setMarkerPosLocal getpos Afgan_Soldier_3;
_markaf3 setMarkerTextlocal format["Afgan_3(%1)",name Afgan_Soldier_3];
_markaf3 setMarkerSizelocal [1, 1];
_markaf3 setMarkerColorlocal "ColorWhite";
_markaf3;
[] spawn {
  while {player getVariable ["Marks", false]} do { "AfganMark3" setMarkerPosLocal getpos Afgan_Soldier_3; sleep 0.1; };
};
_markaf4 = createMarkerLocal ["AfganMark4", getpos Afgan_Soldier_4];
_markaf4 setMarkerTypeLocal "hd_dot";
_markaf4 setMarkerPosLocal getpos Afgan_Soldier_4;
_markaf4 setMarkerTextlocal format["Afgan_4(%1)",name Afgan_Soldier_4];
_markaf4 setMarkerSizelocal [1, 1];
_markaf4 setMarkerColorlocal "ColorWhite";
_markaf4;
[] spawn {
  while {player getVariable ["Marks", false]} do { "AfganMark4" setMarkerPosLocal getpos Afgan_Soldier_4; sleep 0.1; };
};
_markaf5 = createMarkerLocal ["AfganMark5", getpos Afgan_Soldier_5];
_markaf5 setMarkerTypeLocal "hd_dot";
_markaf5 setMarkerPosLocal getpos Afgan_Soldier_5;
_markaf5 setMarkerTextlocal format["Afgan_5(%1)",name Afgan_Soldier_5];
_markaf5 setMarkerSizelocal [1, 1];
_markaf5 setMarkerColorlocal "ColorWhite";
_markaf5;
[] spawn {
  while {player getVariable ["Marks", false]} do { "AfganMark5" setMarkerPosLocal getpos Afgan_Soldier_5; sleep 0.1; };
};
_markaf6 = createMarkerLocal ["AfganMark6", getpos Afgan_Soldier_6];
_markaf6 setMarkerTypeLocal "hd_dot";
_markaf6 setMarkerPosLocal getpos Afgan_Soldier_6;
_markaf6 setMarkerTextlocal format["Afgan_6(%1)",name Afgan_Soldier_6];
_markaf6 setMarkerSizelocal [1, 1];
_markaf6 setMarkerColorlocal "ColorWhite";
_markaf6;
[] spawn {
  while {player getVariable ["Marks", false]} do { "AfganMark6" setMarkerPosLocal getpos Afgan_Soldier_6; sleep 0.1; };
};

_marksnipe = createMarkerLocal ["SniperMark", getpos Sniper];
_marksnipe setMarkerTypeLocal "hd_dot";
_marksnipe setMarkerPosLocal getpos Sniper;
_marksnipe setMarkerTextlocal format["Sniper(%1)",name Sniper];
_marksnipe setMarkerSizelocal [1, 1];
_marksnipe setMarkerColorlocal "ColorWhite";
_marksnipe;
[] spawn {
  while {player getVariable ["Marks", false]} do { "SniperMark" setMarkerPosLocal getpos Sniper; sleep 0.1; };
};
_marksnipe1 = createMarkerLocal ["SniperMark1", getpos Sniper_1];
_marksnipe1 setMarkerTypeLocal "hd_dot";
_marksnipe1 setMarkerPosLocal getpos Sniper_1;
_marksnipe1 setMarkerTextlocal format["Sniper_1(%1)",name Sniper_1];
_marksnipe1 setMarkerSizelocal [1, 1];
_marksnipe1 setMarkerColorlocal "ColorWhite";
_marksnipe1;
[] spawn {
  while {player getVariable ["Marks", false]} do { "SniperMark1" setMarkerPosLocal getpos Sniper_1; sleep 0.1; };
};
_marksnipe2 = createMarkerLocal ["SniperMark2", getpos Sniper_2];
_marksnipe2 setMarkerTypeLocal "hd_dot";
_marksnipe2 setMarkerPosLocal getpos Sniper_2;
_marksnipe2 setMarkerTextlocal format["Sniper_2(%1)",name Sniper_2];
_marksnipe2 setMarkerSizelocal [1, 1];
_marksnipe2 setMarkerColorlocal "ColorWhite";
_marksnipe2;
[] spawn {
  while {player getVariable ["Marks", false]} do { "SniperMark2" setMarkerPosLocal getpos Sniper_2; sleep 0.1; };
};
_marksnipe3 = createMarkerLocal ["SniperMark3", getpos Sniper_3];
_marksnipe3 setMarkerTypeLocal "hd_dot";
_marksnipe3 setMarkerPosLocal getpos Sniper_3;
_marksnipe3 setMarkerTextlocal format["Sniper_3(%1)",name Sniper_3];
_marksnipe3 setMarkerSizelocal [1, 1];
_marksnipe3 setMarkerColorlocal "ColorWhite";
_marksnipe3;
[] spawn {
  while {player getVariable ["Marks", false]} do { "SniperMark3" setMarkerPosLocal getpos Sniper_3; sleep 0.1; };
};
_marksnipe4 = createMarkerLocal ["SniperMark4", getpos Sniper_4];
_marksnipe4 setMarkerTypeLocal "hd_dot";
_marksnipe4 setMarkerPosLocal getpos Sniper_4;
_marksnipe4 setMarkerTextlocal format["Sniper_4(%1)",name Sniper_4];
_marksnipe4 setMarkerSizelocal [1, 1];
_marksnipe4 setMarkerColorlocal "ColorWhite";
_marksnipe4;
[] spawn {
  while {player getVariable ["Marks", false]} do { "SniperMark4" setMarkerPosLocal getpos Sniper_4; sleep 0.1; };
};
_marksnipe5 = createMarkerLocal ["SniperMark5", getpos Sniper_5];
_marksnipe5 setMarkerTypeLocal "hd_dot";
_marksnipe5 setMarkerPosLocal getpos Sniper_5;
_marksnipe5 setMarkerTextlocal format["Sniper_5(%1)",name Sniper_5];
_marksnipe5 setMarkerSizelocal [1, 1];
_marksnipe5 setMarkerColorlocal "ColorWhite";
_marksnipe5;
[] spawn {
  while {player getVariable ["Marks", false]} do { "SniperMark5" setMarkerPosLocal getpos Sniper_5; sleep 0.1; };
};
_marksnipe6 = createMarkerLocal ["SniperMark6", getpos Sniper_6];
_marksnipe6 setMarkerTypeLocal "hd_dot";
_marksnipe6 setMarkerPosLocal getpos Sniper_6;
_marksnipe6 setMarkerTextLocal format["Sniper_6(%1)",name Sniper_6];
_marksnipe6 setMarkerSizeLocal [1, 1];
_marksnipe6 setMarkerColorLocal "ColorWhite";
_marksnipe6;
[] spawn {
  while {player getVariable ["Marks", false]} do { "SniperMark6" setMarkerPosLocal getpos Sniper_6; sleep 0.1; };
};
}
else
{closeDialog 0;
hint parseText format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
diag_log format["%1 Has Attempted To Use A.M Without Being AUTH, THIS HAS BEEN LOGGED", profileName];
};