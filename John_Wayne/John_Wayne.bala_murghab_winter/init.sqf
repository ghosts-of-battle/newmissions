[{
    // Disable Ambient Animals
    [{time > 0}, {enableEnvironment [false, false];}] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_directCall;

// ALiVE config
call compile preprocessFile "staticData.sqf";

if (!hasInterface && !isDedicated) then {
headlessClients = [];
headlessClients set [(count headlessClients), player];
publicVariable "headlessClients";
isHC = true;
};


["ace_arsenal_displayOpened", {
    params ["_display"];
    mission_arsenal_display = _display;
    createDialog "ace_arsenal_loadoutsDisplay";
}] call CBA_fnc_addEventHandler;

["ace_arsenal_loadoutsDisplayClosed", {
    mission_arsenal_display closeDisplay 1;
}] call CBA_fnc_addEventHandler;