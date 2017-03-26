waitUntil {uniform player in ["rDM_t1Speed","rDM_t2Speed","rDM_t3Speed"]};
while {true} do {
	_uni = uniform player;
if (uniform player isEqualTo "rDM_t1Speed") then {
	player setAnimSpeedCoef 1.1
} else {
	if (uniform player isEqualTo "rDM_t2Speed") then {
	player setAnimSpeedCoef 1.2
} else {
	if (uniform player isEqualTo "rDM_t3Speed") then {
	player setAnimSpeedCoef 1.5
			};
		};
	};

waitUntil {uniform player != _uni};
while {true} do {
	player setAnimSpeedCoef 1.0
	};
};
