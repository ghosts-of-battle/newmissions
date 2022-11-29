class Extended_PreInit_EventHandlers {
    class tinter_furniture_pre_init {
        init = "call compile preprocessFileLineNumbers 'furniture\XEH_preInit.sqf'";
    };
    class VCom_init_event {
		preinit = 1;
        init = "call compile preprocessFileLineNumbers 'Vcom\Functions\VCM_Functions\fn_CBASettings.sqf';";
    };
};

class CfgDebriefingSections {
    #include "\z\ghostb\addons\adminmenu\debriefAdminLog.inc"
    class acex_killTracker {
        title = "ACEX Killed Events";
        variable = "acex_killTracker_outputText";
    };
};
