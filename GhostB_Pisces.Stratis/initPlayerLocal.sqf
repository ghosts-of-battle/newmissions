#include "script_component.hpp"
/*
 * Author: Theseus Incorporated
 * Initialization of scripts local to player
 * Executed locally when player joins mission (includes both mission start and JIP)
 * Executed after initServer and before initPlayerServer and init.
 *
 * Arguments:
 * 0: Player <OBJECT>
 * 1: Did JIP <BOOL>
 *
 * Return Value:
 * None
 *
 * Example:
 * None
 */

[{
    params ["_player", "_didJIP"];


    // Feature overview
    [_player] call FUNC(featureOverview);
}, _this] call CBA_fnc_directCall;

if (player getVariable ["isSneaky",false]) then {
    [player] execVM "functions\Scripts\initUCR.sqf";
};
