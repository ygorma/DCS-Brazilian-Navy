-- Fragata Classe Niterói - Marinha do Brasil

-- Defensora

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/Niteroi.zip")
mount_vfs_liveries_path (current_mod_path.."/Liveries")

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "Niteroi";
GT.visual.shape_dstr = ""

GT.animation_arguments.radar1_rotation = 11;
GT.radar1_period = 10;

-- GENERAL DATA ***************************************************************************

GT.life = 800;
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
GT.DeckLevel = 5.6;
GT.X_nose = 63
GT.X_tail = -70
GT.Tail_Width = 20;
GT.Gamma_max = 0.35;
GT.Om = 0.05;
GT.speedup = 0.1014062;
GT.R_min = 212.4;
GT.distFindObstacles = 1048.6;

GT.numParking = 1;
GT.Helicopter_Num_ = 1;

GT.Landing_Point = {-35, 7.1, 0.0}

GT.airWeaponDist = 19000
GT.airFindDist = 25000
GT.exhaust =
{
	[1] = { size = 0.655 , pos = {-2, 20, 0} }
};

--[[

    https://pt.wikipedia.org/wiki/F_Defensora_(F-41)

	1 reparo singelo do canhão Vickers Mk 8 de 4.5 polegadas/55 calibres (114mm); 
    2 reparos singelos do canhão Bofors de 40 mm/70 Mk3; 
    1 lançador óctuplo de mísseis superfície-ar Aspide; 
    um morteiro duplo do foguetes SR-375 BOROC de 375mm e 2 lançadores triplos STWS Mk 1 de torpedos A/S de 324mm; 
    2 lançadores de mísseis superfície-superfície Exocet MM-40;
    e 1 Sistema de Lançamento de Despistadores de Mísseis - SLDM ET/SLQ-3. 
    Composto por 04 lançadores de 12 células e utiliza foguetes Chaff.

]]--

-- RADAR
GT.WS = {}
local ws;
GT.WS.maxTargetDetectionRange = 20000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(60);
GT.WS.searchRadarFrequencies = {{50.0e6, 54.0e6}, {2.0e9, 2.2e9}}


-- Vickers Mk 8 de 4.5 polegadas/55 calibres (114mm)
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_AK176);
GT.WS[ws].center = 'mk8_base_conn';
GT.WS[ws].drawArgument1 = 13;
GT.WS[ws].drawArgument2 = 14;
GT.WS[ws].angles = { {math.rad(135), math.rad(-135), math.rad(-5), math.rad(50)} };
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].LN[1].fireAnimationArgument = 118;
GT.WS[ws].LN[1].BR[1].connector_name = 'mk8_cannon_conn';

-- Bofors 40mm gun
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.Bofors_40mm);
GT.WS[ws].center = 'bofors_1_base_conn';
GT.WS[ws].drawArgument1 = 21;
GT.WS[ws].drawArgument2 = 22;
GT.WS[ws].angles = { {math.rad(180), math.rad(0), math.rad(0), math.rad(80)} };
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].LN[1].fireAnimationArgument = 125;
GT.WS[ws].LN[1].BR[1].connector_name = 'bofors_1_cannon_conn';
GT.WS[ws].type = 3;
GT.WS[ws].distanceMax = 4000
GT.WS[ws].max_trg_alt = 3000
GT.WS[ws].reflection_limit = 1.1
GT.WS[ws].reactionTime = 2.0

-- Bofors 40mm gun
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.Bofors_40mm);
GT.WS[ws].center = 'bofors_2_base_conn';
GT.WS[ws].drawArgument1 = 23;
GT.WS[ws].drawArgument2 = 24;
GT.WS[ws].angles = { {math.rad(0), math.rad(180), math.rad(0), math.rad(80)} };
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].LN[1].fireAnimationArgument = 125;
GT.WS[ws].LN[1].BR[1].connector_name = 'bofors_2_cannon_conn';
GT.WS[ws].type = 3;
GT.WS[ws].distanceMax = 4000
GT.WS[ws].max_trg_alt = 3000
GT.WS[ws].reflection_limit = 1.1
GT.WS[ws].reactionTime = 2.0

-- Lançador óctuplo de mísseis superfície-ar Aspide
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.seasparrow)
GT.WS[ws].center = 'aspide_base_conn'
GT.WS[ws].angles = {
					 {math.rad(-135), math.rad(135), math.rad(5), math.rad(80)},
				   }
GT.WS[ws].drawArgument1 = 51
GT.WS[ws].drawArgument2 = 52
GT.WS[ws].reference_angle_Y = math.rad(-180)
GT.WS[ws].LN[1].BR = {
						{connector_name = 'aspide_launcher_1'},
                        {connector_name = 'aspide_launcher_2'},
                        {connector_name = 'aspide_launcher_3'},
                        {connector_name = 'aspide_launcher_4'},
                        {connector_name = 'aspide_launcher_5'},
                        {connector_name = 'aspide_launcher_6'},
                        {connector_name = 'aspide_launcher_7'},
                        {connector_name = 'aspide_launcher_8'},
					}

-- lançadores de mísseis superfície-superfície Exocet MM-40
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_HARPOON )
GT.WS[ws].pos = {13,0,12}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 4;
GT.WS[ws].LN[1].BR = {
						{connector_name = 'Exocet_01'},
						{connector_name = 'Exocet_02'},
                        {connector_name = 'Exocet_03'},
						{connector_name = 'Exocet_04'},
					}


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

GT.Name = "Niteroi"
GT.DisplayName = _("Niterói Class Frigate")
GT.Rate = 5500
GT.encyclopediaAnimation = { 
	args = {
		[51] = 0.5, -- PS aft SAM launcher rotation
	}		
}

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
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,wsType_GenericLightArmoredShip,
                    "Cruisers",
                    "RADAR_BAND1_FOR_ARM",
                    "DetectionByAWACS",
				};
				GT.Categories = {
					{name = "Armed Ship"},
					{name = "HelicopterCarrier"}
				};

GT.Countries = { "Brazil",};

add_surface_unit(GT)