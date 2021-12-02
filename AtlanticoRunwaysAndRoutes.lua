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