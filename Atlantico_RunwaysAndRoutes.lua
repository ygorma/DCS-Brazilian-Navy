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
	{{25,	14,		 -8}, 		360.000, 			65.85, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{-60,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5}

};
GT.RunWays.RunwaysNumber = #GT.RunWays

--TAXI ROUTES AFTER LANDING (The last point is the final parking position. V_target means Speed)******************************************************

GT.RunWays.RunwaysNumber = #GT.RunWays

GT.TaxiRoutes =
	-- taxi routes and parking spots in LCS
	--    x				y        z			V_target
{
	{ -- 1 parking spot 
		{{-88,	14,		 -8}, 	2},
		{{57,	14,		 -8}, 	2}	
		
	},
	{ -- 2 parking spot
		{{-88,	14,		 -8}, 	2},
		{{25,	14,		 -8}, 	2}

	},
	{ -- 3 parking spot
		{{-88,	14,		 -8}, 	2},
		{{0,	14,		 -8}, 	2}
	},
	{ -- 4 parking spot
		{{-88,	14,		 -8}, 	2},
		{{-30,	14,		 -8}, 	2}
	},
	{ -- 5 parking spot
		{{-88,	14,		 -8}, 	2},
		{{-60,	14,		 -8}, 	2}
	},
	{ -- 6 parking spot
		{{-88,	14,		 -8}, 	2},
		{{-88,	14,		 -8}, 	2}
	},
	{ -- 7 parking spot
		{{-88,	14,		 -8}, 	2},
		{{ 85,	14,		0},	    2}
	},
};
GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

-- TAXI FOR TAKE OFF ROUTES*************************************************************************

GT.TaxiForTORoutes =
	-- taxi routes and parking spots in LCS
	--    x			y        z			V_target
{
	{ RunwayIdx = 1, Points =
		{ -- 1 spawn spot -> front deck 1
			{{ 52,	    16.35,		 9},	1.0},
			{{ 57,	    16.35,		 5},	1.0}
		}
	},
	{ RunwayIdx = 1, Points =
		{ -- 2 spawn spot -> front deck 2
			{{ 62,  	16.35,      9},		1.0},
			{{ 67,      16.35,      5},     1.0}
		}
	},
	{ RunwayIdx = 1, Points =
		{ -- 3 spawn spot -> front deck 3
			{{ 72,	    16.35,		 9},	1.0},
			{{ 77,	    16.35,		 5},	1.0}
		}
	},
	{ RunwayIdx = 1, Points =
		{ -- 4 spawn spot -> elevator
			{{ 37.50,	16.35,   0.91},		1.0},
			{{ 32.50,   16.35,   0.91},     1.0}
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 5 spawn spot -> island 1
			{{ 17.68,	 16.35,   0.91},	 1.0},
			{{ 15.68,    16.35,   0.91},     1.0}
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 6 spawn spot -> island 2
			{{  0.0,	 16.35,  0.91},		1.0},
			{{ -5.68,    16.35,  0.91},     1.0}
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 7 spawn spot -> elevator 2
			{{ -42.30,	 16.35,    16},		 1.0},
			{{ -37.30,   16.35,    11},      1.0}
		}
	}
};
GT.TaxiForTORoutes.RoutesForTONumber = #GT.TaxiForTORoutes

GT.HelicopterSpawnTerminal = 
	-- taxi routes and parking spots in LCS
	--    x				y        z			direction
{		
	{ TerminalIdx = 8, Points =
		{ -- 1 spawn spot
			{{57,	14,		 -8}, 	0}		
		}
	},
	{ TerminalIdx = 9, Points =
		{ -- 2 spawn spot
			{{25,	14,		 -8}, 	0}			
		}
	},
	{ TerminalIdx = 10, Points =
		{ -- 3 spawn spot
			{{0,	14,		 -8}, 	0}
		}
	},	
	{ TerminalIdx = 11, Points =
		{ -- 4 spawn spot
			{{-30,	14,		 -8}, 	0}
		}
	},	
	{ TerminalIdx = 12, Points =
		{ -- 5 spawn spot
			{{-60,	14,		 -8}, 	0}
		}
	},
	{ TerminalIdx = 13, Points =
		{ -- 6 spawn spot
			{{-88,	14,		 -8}, 	0}
		}
	},
	{ TerminalIdx = 14, Points =
		{ -- 7 spawn spot
			{{85,		14,		0},	 0}
		}
	}
};
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal