/*
    File: fn_updatePartial.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Takes partial data of a player and updates it, this is meant to be
    less network intensive towards data flowing through it for updates.
*/
private ["_uid","_side","_value","_value1","_value2","_mode","_query"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[civilian]] call BIS_fnc_param;
_mode = [_this,3,-1,[0]] call BIS_fnc_param;

if (_uid isEqualTo "" || _side isEqualTo sideUnknown) exitWith {}; //Bad.
_query = "";

switch (_mode) do {
    case 0: {
        _value = [_this,2,0,[0]] call BIS_fnc_param;
        _value = [_value] call DB_fnc_numberSafe;
        _query = format ["UPDATE players SET CASH='%1' WHERE Steam64='%2'",_value,_uid];
    };

    case 1: {
        _value = [_this,2,0,[0]] call BIS_fnc_param;
        _value = [_value] call DB_fnc_numberSafe;
        _query = format ["UPDATE players SET BANK='%1' WHERE Steam64='%2'",_value,_uid];
    };


    case 2: {
        _value = [_this,2,[],[[]]] call BIS_fnc_param;
        _value = [_value] call DB_fnc_mresArray;
        switch (_side) do {
            case west: {_query = format ["UPDATE players SET Player_gear='%1' WHERE Steam64='%2'",_value,_uid];};
            case civilian: {_query = format ["UPDATE players SET Player_gear='%1' WHERE Steam64='%2'",_value,_uid];};
            case independent: {_query = format ["UPDATE players SET Player_gear='%1' WHERE Steam64='%2'",_value,_uid];};
        };
    };


    case 6: {
        _value1 = [_this,2,0,[0]] call BIS_fnc_param;
        _value2 = [_this,4,0,[0]] call BIS_fnc_param;
        _value1 = [_value1] call DB_fnc_numberSafe;
        _value2 = [_value2] call DB_fnc_numberSafe;
        _query = format ["UPDATE players SET CASH='%1', BANK='%2' WHERE Steam64='%3'",_value1,_value2,_uid];
    };

    case 7: {
        _array = [_this,2,[],[[]]] call BIS_fnc_param;
        [_uid,_side,_array,0] call TON_fnc_keyManagement;
    };
};

if (_query isEqualTo "") exitWith {};

[_query,1] call DB_fnc_asyncCall;
