-- Fragata Classe Rademaker Marinha do Brasil

-- Rademaker

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/Macae.zip")

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "Macae";
GT.visual.shape_dstr = ""

-- GENERAL DATA***************************************************************************


GT.life 					= 2000;
GT.mass 					= 7.25e+006;
GT.max_velocity 			= 15.4333
GT.race_velocity 			= 15.4333
GT.economy_velocity 		= 9.26;
GT.economy_distance 		= 1.59272e+007;
GT.race_distance			= 1.59272e+007;
GT.shipLength 				= 131;
GT.Width 					= 14;
GT.Height 					= 25;
GT.Length 					= 131;
GT.DeckLevel 				= 5.6;
GT.X_nose 					= 23
GT.X_tail 					= -21
GT.Tail_Width 				= 20;
GT.Gamma_max 				= 0.35;
GT.Om 						= 0.05;
GT.speedup 					= 0.1014062;
GT.R_min 					= 212.4;
GT.distFindObstacles 		= 1048.6;

GT.numParking 				= 0;
GT.Helicopter_Num_ 			= 0;
GT.Plane_Num_		  		= 0;

GT.airWeaponDist 			= 40000
GT.airFindDist 				= 70000

--[[ WEAPON SYSTEMS ****************************************************************************

GT.DM = {
    { area_name = "ZA_L",			area_arg = 100,	area_life = 27, area_fire = { pos = {3.7, 17.15, -6.25}, size = 0.5}},
}

-- Harpoon
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_HARPOON )
GT.WS[ws].area = 'ZA_L';
GT.WS[ws].pos = {40,15,15}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 1;
GT.WS[ws].LN[1].BR = {
						{connector_name = 'MM-40', drawArgument = 153},
					}

--]]

-- RADAR
GT.WS = {}
local ws;
GT.WS.maxTargetDetectionRange = 20000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(60);
GT.WS.searchRadarFrequencies = {{50.0e6, 54.0e6}, {2.0e9, 2.2e9}}




GT.Name = "Macaé"
GT.DisplayName = _("Macaé Patrol Ship")
GT.Rate = 5500

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR"},
                RADAR = {
                    "Patriot str",
                    "ticonderoga search radar",
                }
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   = "no";
GT.mapclasskey = "P0091000067";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,TICONDEROGA,
                    "Cruisers",
                    "RADAR_BAND1_FOR_ARM",
                    "DetectionByAWACS",
				};
				GT.Categories = {
					{name = "Armed Ship"}
				};

GT.Countries = { "Brazil",};

add_surface_unit(GT)