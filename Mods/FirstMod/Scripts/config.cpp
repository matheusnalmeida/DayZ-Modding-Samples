class CfgPatches
{
	class FirstMod
	{
		requiredAddons[]=
		{
			// ""
		};
	};
};

class CfgMods
{
	class FirstMod
	{
		type = "mod";
		class defs
		{
			class worldScriptModule
			{
				value = "";
				files[] = {"Mods/FirstMod/Scripts/4_World"};
			};
		};
	};
};