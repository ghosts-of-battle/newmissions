if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};
// Fixing warning spam from ambientLife. Also, if I hear "Look a bunny!" one more bloody time...
sleep 0.2;
////////////////////////////////////////////////////////////////////////////////
// kill the rabbits
////////////////////////////////////////////////////////////////////////////////
enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports									
////////////////////////////////////////////////////////////////////////////////
{_x setSpeaker "NoVoice"} forEach playableUnits;

// Executed locally when player joins mission (includes both mission start and JIP). 

// Task					Applies To		JIP		Related To		Exec Environment	Notes
// initServer.sqf		Server			-		Event Scripts	Scheduled			-	
// initPlayerLocal.sqf	Client			+		Event Scripts	Scheduled			-
// initPlayerServer.sqf Server			+		Event Scripts	Scheduled			-
// init.sqf				All				-		-				-					-	

/*
 *	player	Object
 *	didJIP	Boolean
 */
params ["_player", "_didJIP"];
