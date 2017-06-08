_debug = true;

if ((score player) < -46) then {
    player say3D "Panic";
        _blurEffect = ppEffectCreate ["DynamicBlur",500];
_blurEffect ppEffectEnable true;
_ppEffect = ppEffectCreate ["ColorCorrections",2500];
    _ppEffect ppEffectAdjust [1, 0.4, 0, [0, 0, 0, 0], [2, 1, 1, 0], [2, 1, 1, 0]];
    _ppEffect ppEffectCommit 0.1;
    _ppEffect ppEffectEnable true;
    _ppEffect ppEffectForceInNVG true;
    _blurEffect ppEffectAdjust [3];
_blurEffect ppEffectCommit 2;

uisleep 1;

    _ppEffect ppEffectAdjust [1, 0.4, 0, [0, 0, 0, 0], [2, 1, 1, 1], [2, 1, 1, 1]];
    _ppEffect ppEffectCommit 5;
    uisleep 5;
    _ppEffect ppEffectEnable false;
    ppEffectDestroy _ppEffect;

    _blurEffect ppEffectAdjust [0];
    _blurEffect ppEffectCommit 1;
    _blurEffect ppEffectEnable false;
ppEffectDestroy _blurEffect;
} else {
if ((score player) < -26) then {
    player say3D "Panic";
_blurEffect = ppEffectCreate ["DynamicBlur",500];
_blurEffect ppEffectEnable true;
_ppEffect = ppEffectCreate ["ColorCorrections",2500];
    _ppEffect ppEffectAdjust [1, 0.4, 0, [0, 0, 0, 0], [2, 2, 1, 0], [2, 2, 1, 0]];
    _ppEffect ppEffectCommit 0.1;
    _ppEffect ppEffectEnable true;
    _ppEffect ppEffectForceInNVG true;
    _blurEffect ppEffectAdjust [3];
_blurEffect ppEffectCommit 2;

uisleep 1;

    _ppEffect ppEffectAdjust [1, 0.4, 0, [0, 0, 0, 0], [2, 2, 1, 1], [2, 2, 1, 1]];
    _ppEffect ppEffectCommit 5;
    uisleep 5;
    _ppEffect ppEffectEnable false;
    ppEffectDestroy _ppEffect;

    _blurEffect ppEffectAdjust [0];
    _blurEffect ppEffectCommit 1;
    _blurEffect ppEffectEnable false;
ppEffectDestroy _blurEffect;
            };
        };
if (_debug) then {
    uiSleep (5 + floor(random 25));
    [] spawn rDM_fnc_Sanity;
} else {
  uiSleep (500 + floor(random 2500));
    [] spawn rDM_fnc_Sanity;
};