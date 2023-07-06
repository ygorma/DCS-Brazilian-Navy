GT.RunWays =
{
-- landing strip definition (first in table)
--	VppStartPoint(RUNWAY CENTER POINT)			azimuth (degree}   	Length_Vpp; 	Width_Vpp;
	{{65,	14,		 -8},					            360, 		  	    160, 		20,
-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	0, 			0.5, 		  		2.8, 					3.0, 			  3.0, 				3.2, 				3.5},
-- runways
	{{33,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{5,	14,		 -8}, 	    360.000, 			75.28, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
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
		{{65,	14,		 5.0}, 	2},	
		{{31,	14,		 5.0}, 	2}
		
	},
	{ -- Spot 2 > Elevator 1 
		{{33,	14,		 -8}, 	2},
		{{33,	14,		 5.0}, 	2},	
		{{31,	14,		 5.0}, 	2}
	},
	{ -- Spot 3 > Elevator 1 
		{{5,	14,		 -8}, 	2},
		{{5,	14,		 5.0}, 	2},	
		{{31,	14,		 5.0}, 	2}
	},
	{ -- Spot 4 > Elevator 2 
		{{-22,	14,		 -8}, 	2},
		{{-22,	14,		 5.0}, 	2},	
		{{-52,	14,		 5.0}, 	2}
	},
	{ -- Spot 5 > Elevator 2 
		{{-52,	14,		 -8}, 	2},
		{{-52,	14,		 5.0}, 	2},	
		{{-37,	14,		 5.0}, 	2}
	},
	{ -- Spot 6 > Elevator 2 
		{{-80,	14,		 -8}, 	2},
		{{-80,	14,		 5.0}, 	2},	
		{{-37,	14,		 5.0}, 	2}
	},
	{ -- Spot 7 > Elevator 1 
		{{85,	14,		 0}, 	2},
		{{85,	14,		 5.0}, 	2},	
		{{31,	14,		 5.0}, 	2}
	}
};
GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

-- TAXI FOR TAKE OFF ROUTES*************************************************************************

GT.TaxiForTORoutes =
	-- taxi routes and parking spots in LCS
	--    x			y        z			V_target
{
	{ RunwayIdx = 1, Points =
		{ -- Elevator 1 -> Spot 2
			{{31,	14,		 5.0},	2},
			{{33,	14,		 5.0}, 	2},
			{{33,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- Elevator 1 -> Spot 3
			{{31,	14,		 5.0},	2},
			{{5,	14,		 5.0}, 	2},
			{{5,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 3, Points =
		{ -- Elevator 2 -> Spot 4
			{{-37,	14,		 5.0},	2},
			{{-22,	14,		 5.0}, 	2},
			{{-22,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 4, Points =
		{ -- Elevator 2 -> Spot 4
			{{-37,	14,		 5.0},	2},
			{{-52,	14,		 5.0}, 	2},
			{{-52,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 5, Points =
		{ -- Elevator 2 -> Spot 4
			{{-37,	14,		 5.0},	2},
			{{-80,	14,		 5.0}, 	2},
			{{-80,	14,		 -8}, 	2}
		}
	},
	{ RunwayIdx = 6, Points =
		{ -- Elevator 1 -> Spot 7
			{{31,	14,		 5.0},	2},
			{{85,	14,		 5.0}, 	2},
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
			{{65,	14,		 -8}, 	0}
		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 2 spawn spot
			{{33,	14,		 -8}, 	0}		
		}
	},
	{ TerminalIdx = 3, Points =
		{ -- 2 spawn spot
			{{5,	14,		 -8}, 	0}		
		}
	},
	{ TerminalIdx = 4, Points =
		{ -- 2 spawn spot
			{{-22,	14,		 -8}, 	0}			
		}
	},
	{ TerminalIdx = 5, Points =
		{ -- 2 spawn spot
			{{-52,	14,		 -8}, 	0}			
		}
	},
	{ TerminalIdx = 6, Points =
		{ -- 2 spawn spot
			{{-80,	14,		 -8}, 	0}			
		}
	},
	{ TerminalIdx = 7, Points =
		{ -- 2 spawn spot
			{{85,	14,		 0}, 	0}			
		}
	}
};
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal