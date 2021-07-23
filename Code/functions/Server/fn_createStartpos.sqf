 // Build start position
private _fenceRotateDir = random 360;

// adding the second _backPack to the line below addes arsenal to the spawned sack
private _backPack = "Box_FIA_Wps_F" createvehicle A3E_StartPos; _backPack addAction ["<t color='#ff1111'>BIS Arsenal</t>", {["Open",true] call BIS_fnc_arsenal}];
// add this to live above if current does not work -> _backPack addAction ["<t color='#ff1111'>BIS Arsenal</t>", {["Open",true] call BIS_fnc_arsenal}];



private _template = selectRandom(["a3e_fnc_BuildPrison", "a3e_fnc_BuildPrison1", "a3e_fnc_BuildPrison2", "a3e_fnc_BuildPrison3", "a3e_fnc_BuildPrison4", "a3e_fnc_BuildPrison5"]);

[A3E_StartPos, _fenceRotateDir, _backPack] remoteExec [_template, 0, true];

A3E_FenceIsCreated = true;
publicVariable "A3E_FenceIsCreated";

_backPack;
