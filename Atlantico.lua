-- Porta-Helicópteros Multipropósito Atlântico da Marinha do Brasil

-- Atlântico

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/Atlantico.zip")

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "Atlantico";
GT.visual.shape_dstr = ""

-- GENERAL DATA***************************************************************************

GT.life = 1200;
GT.mass = 7.25e+006;
GT.max_velocity = 15.4333
GT.race_velocity = 15.4333
GT.economy_velocity = 9.26;
GT.economy_distance = 1.59272e+007;
GT.race_distance = 1.59272e+007;
GT.shipLength = 131;
GT.Width = 14;
GT.Height = 25;
GT.Length = 131;
GT.DeckLevel = 14;
GT.X_nose = 95
GT.X_tail = -90
GT.Tail_Width = 30;
GT.Gamma_max = 0.35;
GT.Om = 0.05;
GT.speedup = 0.1014062;
GT.R_min = 212.4;
GT.distFindObstacles = 1048.6;

GT.numParking          = 6;
GT.Plane_Num_		   = 18;
GT.Helicopter_Num_     = 18;

GT.Countries		   = { "Brazil",};

GT.Landing_Point = {-88, 14, -8}

GT.airWeaponDist = 40000
GT.airFindDist = 70000
GT.exhaust =
{
	[1] = { size = 0.655 , pos = {10, 30, 14} }
};

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



GT.Name = "Atlantico"
GT.DisplayName = _("Atlantico Carrier")
GT.Rate = 5500
GT.Sensors = {  
			OPTIC = {"long-range naval optics", "long-range naval LLTV"},
			RADAR = {"seasparrow tr","carrier search radar",},
};
GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   = "no";
GT.mapclasskey = "P0091000067";
GT.attribute = {wsType_Navy, wsType_Ship, wsType_AirCarrier, WSTYPE_PLACEHOLDER,
				"Aircraft Carriers",
				"ski_jump",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				"DetectionByAWACS",
				};
GT.Categories = {
	{name = "AircraftCarrier"},
	{name = "AircraftCarrier With Tramplin"},
	{name = "Armed Ship"}
};

GT.Countries = { "Brazil",};


-- RUNWAY DATA UNITS IN METERS**************************************************************************************************************************

add_surface_unit(GT)

GT.RunWays =
{
-- landing strip definition (first in table)
--	VppStartPoint(RUNWAY CENTER POINT)			azimuth (degree}   	Length_Vpp; 	Width_Vpp;
	{{0, 14, -8}, 					            360, 		  	    200, 		20,
-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	0, 			0.5, 		  		2.8, 					3.0, 			  3.0, 				3.2, 				3.5},
-- runways
	{{65,	14,		 -8}, 		360.000, 			65.85, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{33,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{-8,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{-22,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{-52,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{-80,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{ 85,	14,		  0}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},

};
GT.RunWays.RunwaysNumber = #GT.RunWays

--TAXI ROUTES AFTER LANDING (The last point is the final parking position. V_target means Speed)******************************************************

GT.TaxiRoutes =
	-- taxi routes and parking spots in LCS
	--    x				y        z			V_target
{
	{ -- Spot 1 > Elevator 1 
		{{65,	14,		 -8}, 	2},
		{{65,	14,		 6.4}, 	2},	
		{{31,	14,		 6.4}, 	2}
		
	},
	{ -- Spot 2 > Elevator 1 
		{{33,	14,		 -8}, 	2},
		{{33,	14,		 6.4}, 	2},	
		{{31,	14,		 6.4}, 	2}
	},
	{ -- Spot 3 > Elevator 1 
		{{-8,	14,		 -8}, 	2},
		{{-8,	14,		 6.4}, 	2},	
		{{31,	14,		 6.4}, 	2}
	},
	{ -- Spot 4 > Elevator 2 
		{{-22,	14,		 -8}, 	2},
		{{-22,	14,		 6.4}, 	2},	
		{{-52,	14,		 6.4}, 	2}
	},
	{ -- Spot 5 > Elevator 2 
		{{-52,	14,		 -8}, 	2},
		{{-52,	14,		 6.4}, 	2},	
		{{-37,	14,		 6.4}, 	2}
	},
	{ -- Spot 6 > Elevator 2 
		{{-80,	14,		 -8}, 	2},
		{{-80,	14,		 6.4}, 	2},	
		{{-37,	14,		 6.4}, 	2}
	},
	{ -- Spot 7 > Elevator 1 
		{{85,	14,		 0}, 	2},
		{{85,	14,		 6.4}, 	2},	
		{{31,	14,		 6.4}, 	2}
	}
};
GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

-- TAXI FOR TAKE OFF ROUTES*************************************************************************

GT.TaxiForTORoutes =
	-- taxi routes and parking spots in LCS
	--    x			y        z			V_target
{
	{ RunwayIdx = 1, Points =
		{ -- Elevator 1 -> Spot 1
			{{31,	14,		 6.4},	2},
			{{65,	14,		 6.4}, 	2},
			{{65,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- Elevator 1 -> Spot 2
			{{31,	14,		 6.4},	2},
			{{33,	14,		 6.4}, 	2},
			{{33,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 3, Points =
		{ -- Elevator 1 -> Spot 3
			{{31,	14,		 6.4},	2},
			{{-8,	14,		 6.4}, 	2},
			{{-8,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 4, Points =
		{ -- Elevator 2 -> Spot 4
			{{-37,	14,		 6.4},	2},
			{{-22,	14,		 6.4}, 	2},
			{{-22,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 5, Points =
		{ -- Elevator 2 -> Spot 4
			{{-37,	14,		 6.4},	2},
			{{-52,	14,		 6.4}, 	2},
			{{-52,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 6, Points =
		{ -- Elevator 2 -> Spot 4
			{{-37,	14,		 6.4},	2},
			{{-80,	14,		 6.4}, 	2},
			{{-80,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 7, Points =
		{ -- Elevator 1 -> Spot 7
			{{31,	14,		 6.4},	2},
			{{85,	14,		 6.4}, 	2},
			{{85,	14,		 0}, 	2}
		}
	},
};
GT.TaxiForTORoutes.RoutesForTONumber = #GT.TaxiForTORoutes

GT.HelicopterSpawnTerminal = 
	-- taxi routes and parking spots in LCS
	--    x				y        z			direction
{		
	{ TerminalIdx = 1, Points =
		{ -- 1 spawn spot
			{{31,	14,		 6.4}, 	0},
			{{65,	14,		 6.4}, 	2},
			{{65,	14,		 -8}, 	2}

		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 2 spawn spot
			{{-37,	14,		 6.4}, 	0}			
		}
	}
};
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal