if ((score player) > -26) then {

	_txt = "<t color='#%1'>%2</t>";
((uiNamespace getVariable "rDMHUD")displayCtrl 8915)ctrlSetstructuredText parseText format[
"%1Players: %2%1Health: %3%1Sanity: %4",
" | ",
format[_txt,"FFFFFF",west countSide playableUnits],
format[_txt,"f6101a",round ((1 - (damage player)) * 100)],
format["<t color='#%1'>%2%</t>","4CDB14",score player]
];
} else {
	if ((score player) > -51) then {

		_txt = "<t color='#%1'>%2</t>";
((uiNamespace getVariable "rDMHUD")displayCtrl 8915)ctrlSetstructuredText parseText format[
"%1Players: %2%1Health: %3%1Sanity: %4",
" | ",
format[_txt,"FFFFFF",west countSide playableUnits],
format[_txt,"f6101a",round ((1 - (damage player)) * 100)],
format["<t color='#%1'>%2%</t>","C4CF00",score player]
];
	} else {
	if ((score player) > -76) then {

		_txt = "<t color='#%1'>%2</t>";
((uiNamespace getVariable "rDMHUD")displayCtrl 8915)ctrlSetstructuredText parseText format[
"%1Players: %2%1Health: %3%1Sanity: %4",
" | ",
format[_txt,"FFFFFF",west countSide playableUnits],
format[_txt,"f6101a",round ((1 - (damage player)) * 100)],
format["<t color='#%1'>%2%</t>","F2BC0A",score player]
];
	} else {
	if ((score player) < -76) then{

		_txt = "<t color='#%1'>%2</t>";
((uiNamespace getVariable "rDMHUD")displayCtrl 8915)ctrlSetstructuredText parseText format[
"%1Players: %2%1Health: %3%1Sanity: %4",
" | ",
format[_txt,"FFFFFF",west countSide playableUnits],
format[_txt,"f6101a",round ((1 - (damage player)) * 100)],
format["<t color='#%1'>%2%</t>","f6101a",score player]
];
			};
		};
	};
};

uiSleep 10;
[] call rDM_fnc_UpdateHud;