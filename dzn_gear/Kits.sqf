// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define WGN_UNI ["TRYK_T_camo_3c_BG","TRYK_U_hood_mc","TRYK_U_pad_hood_tan","TRYK_T_PAD","TRYK_U_B_ODTAN","rhs_uniform_gorka_r_y"]
#define WGN_HD ["H_Cap_tan","H_Bandanna_sand","H_Booniehat_khk","rhs_6b28_green","rhs_6b47"]
#define WGN_FC ["G_Bandanna_khk","rhsusf_shemagh_tan","rhs_scarf"]

kit_wgn_pl = [
	["<EQUIPEMENT >>  ",WGN_UNI,"CUP_V_I_RACS_Carrier_Vest_wdl","tf_rt1523g",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_wgn_sl = [
	["<EQUIPEMENT >>  ",WGN_UNI,"CUP_V_I_RACS_Carrier_Vest_wdl","tf_rt1523g",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M_railed_desert","CUP_30Rnd_545x39_AK74M_desert_M",["rhs_acc_dtk","","CUP_optic_Elcan_reflex_Coyote_pip",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_wgn_mg = [
	["<EQUIPEMENT >>  ",WGN_UNI,"V_TacVest_oli","B_AssaultPack_rgr",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkp","rhs_100Rnd_762x54mmR",["","","rhs_acc_pkas_pkp",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_wgn_at = [
	["<EQUIPEMENT >>  ",WGN_UNI,"V_TacVest_oli","rhs_rpg_empty",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_OG7V_mag",["","","rhs_acc_pgo7v3",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2],["HANDGUN MAG",1],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["SECONDARY MAG",1]]]
];
kit_wgn_aat = [
	["<EQUIPEMENT >>  ",WGN_UNI,"V_TacVest_oli","rhs_rpg_empty",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_desert","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk1983","","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2],["HANDGUN MAG",1],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",1]]]
];
kit_wgn_ss = [
	["<EQUIPEMENT >>  ",WGN_UNI,"CUP_V_MBSS_PACA_RGR","rhsusf_falconii",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2],["HANDGUN MAG",1],["PRIMARY MAG",6],["rhs_VOG25",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",7]]]
];
kit_wgn_gr = [
	["<EQUIPEMENT >>  ",WGN_UNI,"CUP_V_MBSS_PACA_RGR","rhsusf_falconii",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2],["HANDGUN MAG",1],["PRIMARY MAG",6],["rhs_VOG25",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",7]]]
];
kit_wgn_r = [
	["<EQUIPEMENT >>  ",WGN_UNI,"CUP_V_MBSS_PACA_RGR","rhsusf_falconii",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74M_top_rail_desert","CUP_30Rnd_545x39_AK74M_desert_M",["","","CUP_optic_HoloDesert",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7],["rhs_30Rnd_545x39_AK_green",3],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",3]]]
];

kit_wgn_mm = [
	["<EQUIPEMENT >>  ",WGN_UNI,"CUP_V_MBSS_PACA_RGR","rhsusf_falconii",WGN_HD,WGN_FC],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m2",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",15],["rhs_mag_rdg2_white",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",2]]]
];
kit_wgn_crew = [
	["<EQUIPEMENT >>  ",["TRYK_U_B_Denim_T_BG_BK","TRYK_U_B_BLK_T_BG_WH","TRYK_U_B_RED_T_BG_BR"],"rhs_6b43","","rhs_tsh4",["G_Lowprofile","rhsusf_oakley_goggles_blk","CUP_G_ESS_RGR_Facewrap_Skull","CUP_PMC_G_thug"]],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_AK",2]]],
	["<BACKPACK ITEMS >> ",[]]
];



kit_cargo_box = [
	[],
	[],
	[],
	[["RHS_Kornet_Gun_Bag",1],["RHS_Kornet_Tripod_Bag",2],["RHS_AGS30_Gun_Bag",1],["RHS_AGS30_Tripod_Bag",2]]
];

kit_cargo_car = [
	[["rhs_weap_rpg26",4],["CUP_lmg_Pecheneg",1],["dzn_MG_Tripod_Universal_Carry",1]],
	[["rhs_30Rnd_545x39_7N10_AK",15],["rhs_100Rnd_762x54mmR",8],["rhs_mag_rdg2_white",5],["rhs_mag_rgd5",6],["rhs_10Rnd_762x54mmR_7N1",15],["rhs_VOG25",15]],
	[["ACE_fieldDressing",15],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",4]],
	[]
];

kit_cargo_truck = [
	[["rhs_weap_rpg26",4]],
	[["rhs_30Rnd_545x39_7N10_AK",40],["rhs_100Rnd_762x54mmR",15],["rhs_mag_rdg2_white",10],["rhs_mag_rgd5",16],["rhs_rpg7_PG7VL_mag",4],["rhs_rpg7_OG7V_mag",3],["rhs_10Rnd_762x54mmR_7N1",15],["rhs_VOG25",22]],
	[["ACE_fieldDressing",15],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",4]],
	[]
];

kit_cargo_tank = [
	[["FirstAidKit",8],["Medikit",1]],
	[["rhs_30Rnd_545x39_7N10_AK",10],["rhs_mag_rgd5",10],["rhs_mag_nspn_red",10]],
	[["ToolKit",2]],
	[]
];


// ISIS
#define JIH_WEP ["rhs_weap_akms","rhs_weap_ak74m","rhs_weap_akm","rhs_weap_ak74"]
#define JIH_MAG ["rhs_30Rnd_762x39mm","rhs_30Rnd_545x39_AK","rhs_30Rnd_762x39mm","rhs_30Rnd_545x39_AK"]
#define JIH_UNI ["CUP_I_B_PMC_Unit_15","CUP_B_USMC_Navy_Brown","CUP_I_B_PMC_Unit_24","usm_bdu_dcu","CUP_O_TKI_Khet_Partug_06"]
#define JIH_HEAD ["CUP_H_TKI_Lungee_05","TRYK_H_woolhat","CUP_H_TKI_Lungee_06","TRYK_H_PASGT_TAN"]

kit_jihadists_random = [
	"kit_jihadists_fighter"
	,"kit_jihadists_gr"
	,"kit_jihadists_at"
	,"kit_jihadists_mg"
	,"kit_jihadists_fighter"
	,"kit_jihadists_rat"
	,"kit_jihadists_at"
	,"kit_jihadists_fighter"
	,"kit_jihadists_gr"
	,"kit_jihadists_mm"
	,"kit_jihadists_at"
];
kit_jihadists_fighter = [
	["<EQUIPEMENT >>  ",JIH_UNI,"CUP_V_O_Ins_Carrier_Rig","",JIH_HEAD,""],
	["<PRIMARY WEAPON >>  ",JIH_WEP,JIH_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",4],["ACE_packingBandage",5]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_jihadists_gr = [
	["<EQUIPEMENT >>  ",JIH_UNI,"CUP_V_O_SLA_Carrier_Belt03","",JIH_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",4],["ACE_packingBandage",5],["PRIMARY MAG",2]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",4],["rhs_VOG25",10]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_jihadists_mg = [
	["<EQUIPEMENT >>  ",JIH_UNI,"CUP_V_I_Carrier_Belt","B_AssaultPack_rgr",JIH_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",4],["ACE_packingBandage",5]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_jihadists_at = [
	["<EQUIPEMENT >>  ",JIH_UNI,"CUP_V_I_Carrier_Belt","rhs_rpg_empty",JIH_HEAD,""],
	["<PRIMARY WEAPON >>  ",JIH_WEP,JIH_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","rhs_acc_pgo7v3",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",4],["ACE_packingBandage",5],["PRIMARY MAG",2]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2],["rhs_rpg7_type69_airburst_mag",2]]]
];
kit_jihadists_mm = [
	["<EQUIPEMENT >>  ",JIH_UNI,"CUP_V_I_Carrier_Belt","",JIH_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp_wd","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",4],["ACE_packingBandage",5],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_jihadists_rat = [
	["<EQUIPEMENT >>  ",JIH_UNI,"CUP_V_I_Carrier_Belt","",JIH_HEAD,""],
	["<PRIMARY WEAPON >>  ",JIH_WEP,JIH_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",4],["ACE_packingBandage",5],["PRIMARY MAG",2]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_jihadists_crew = [
	["<EQUIPEMENT >>  ",JIH_UNI,"CUP_V_O_Ins_Carrier_Rig","",JIH_HEAD,""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",4],["ACE_packingBandage",5]]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[]]
];