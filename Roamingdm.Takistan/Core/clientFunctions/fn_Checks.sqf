waitUntil {uniform player isEqualTo "rDM_t1Speed"};
while {true} do {
if (uniform player isEqualTo "rDM_t1Speed") then {
	player setAnimSpeedCoef 1.1
};
if (uniform player != "rDM_t1Speed") then {
	player setAnimSpeedCoef 1
};
};

waitUntil {uniform player isEqualTo "rDM_t2Speed"};
while {true} do {
if (uniform player isEqualTo "rDM_t2Speed") then {
	player setAnimSpeedCoef 1.2
};
if (uniform player != "rDM_t2Speed") then {
	player setAnimSpeedCoef 1
};
};

waitUntil {uniform player isEqualTo "rDM_t3Speed"};
while {true} do {
if (uniform player isEqualTo "rDM_t3Speed") then {
	player setAnimSpeedCoef 1.5
};
if (uniform player != "rDM_t3Speed") then {
	player setAnimSpeedCoef 1
};
};
