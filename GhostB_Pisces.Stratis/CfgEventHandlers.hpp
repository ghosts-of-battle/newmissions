class Extended_Respawn_EventHandlers {
    class CAManBase {
        class ADDON {
            respawn = QUOTE(_this call FUNC(setBasicLoadout));
        };
    };
};

class Extended_PreInit_EventHandlers {
    class VCom_init_event {
		preinit = 1;
        init = "call compile preprocessFileLineNumbers 'Vcom\Functions\VCM_Functions\fn_CBASettings.sqf';";
    };
};

class Extended_InitPost_EventHandlers {
    class CAManBase {
		init = "_this call (compile preprocessFileLineNumbers 'postInitXEH.sqf')";
	};
};