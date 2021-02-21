Config = {}

-- Control to start/stop interactions. Comment this out to disable the control.
Config.InteractControl = `INPUT_DYNAMIC_SCENARIO` -- E

-- Interaction picker menu controls
Config.MenuUpControl = `INPUT_GAME_MENU_UP`
Config.MenuDownControl = `INPUT_GAME_MENU_DOWN`
Config.MenuAcceptControl = `INPUT_GAME_MENU_ACCEPT`
Config.MenuCancelControl = `INPUT_GAME_MENU_CANCEL`

-- Settings for the marker that appears on the currently selected object
Config.MarkerType = 0x94FDAE17
Config.MarkerColor = {254, 127, 156, 128}

-- Effects that may be applied when interacting with objects
Config.Effects = {
	["clean"] = function()
		local ped = PlayerPedId()
		ClearPedEnvDirt(ped)
		ClearPedDamageDecalByZone(ped, 10, "ALL")
		ClearPedBloodDamage(ped)
	end
}

-- List of interactable types of objects.
Config.Interactions = {
	-- Pianos
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_piano03x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.70,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_piano02x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.70,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_nbxpiano01x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = -0.1,
		y = -0.75,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_nbmpiano01x"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.77,
		z = 0.5,
		heading = 0.0
	},
	{
		objects = {"sha_man_piano01"},
		radius = 2.0,
		scenarios = {
			{name = "PROP_HUMAN_PIANO", isCompatible = PlayerPedIsMale},
			{name = "PROP_HUMAN_ABIGAIL_PIANO", isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.75,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_DRINKING"}
		},
		x = 0.0,
		y = 0.05,
		z = -0.1,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericBenches,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_DRINKING"}
		},
		label = "left",
		x = 0.4,
		y = -0.05,
		z = -0.1,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericBenches,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_DRINKING"}
		},
		label = "right",
		x = -0.4,
		y = -0.05,
		z = -0.1,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsMale,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_BENCH_HARMONICA"}
		},
		x = 0.0,
		y = -0.3,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdultFemale,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = {
			{name = "PROP_HUMAN_SEAT_CHAIR_FAN"}
		},
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 240.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {"p_chairrusticsav01x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = -0.1,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {"p_chairtall01x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.8,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {"p_barstool01x"},
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.8,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsChild,
		objects = GenericChairs,
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.4,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = GenericBenches,
		label = "right",
		radius = 2.0,
		scenarios = GenericChairAndBenchScenarios,
		x = -0.5,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = GenericBenches,
		label = "left",
		radius = 2.0,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.5,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {
			"p_bench17x",
			"p_benchbear01x"
		},
		label = "right",
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = -0.3,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bench17x",
			"p_benchbear01x"
		},
		label = "left",
		radius = 1.5,
		scenarios = GenericChairAndBenchScenarios,
		x = 0.3,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bed14x",
			"p_bed17x",
			"p_bed21x",
			"p_bedbunk03x",
			"p_bedindian02x",
			"p_cot01x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.3,
		y = -0.2,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.2,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_ambbed01x",
			"p_bed03x",
			"p_bed09x",
			"p_bedindian01x",
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 270.0
	},
	{
		objects = {
			"p_bed05x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = -0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bed10x",
			"p_bed12x",
			"p_bed13x",
			"p_bed22x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.0,
		y = -0.3,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.3,
		y = -0.2,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.2,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			"p_bedking02x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = -0.5,
		y = 0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bedking02x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.5,
		y = 0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			"p_bedrollopen01x",
			"p_bedrollopen03x",
			"p_re_bedrollopen01x",
			"s_bedrollfurlined01x",
			"s_bedrollopen01x",
			"p_amb_mattress04x",
			"p_mattress04x",
			"p_mattress07x",
			"p_mattresscombined01x"
		},
		radius = 1.5,
		scenarios = BedScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.0,
		heading = 180.0
	},
	{
		objects = {
			"p_cs_ann_wrkr_bed01x",
			"p_cs_roc_hse_bed",
			"p_medbed01x"
		},
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.1,
		y = 0.0,
		z = 0.85,
		heading = 270.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "left",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = -0.3,
		z = 0.5,
		heading = 270.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "right",
		radius = 2.0,
		scenarios = BedScenarios,
		x = 0.3,
		y = 0.3,
		z = 0.5,
		heading = 270.0
	},
	-- Valentine bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = -317.01651,
		y = 761.86,
		z = 117.45099,
		heading = 100.278,
		effect = "clean"
	},
	-- Saint Denis bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = 2629.4099,
		y = -1223.7757,
		z = 59.6699,
		heading = 2.896,
		effect = "clean"
	},
	-- Strawberry bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = -1812.46838,
		y = -373.23529,
		z = 166.64999,
		heading = 92.105,
		effect = "clean"
	},
	-- Annesburg bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = 2952.804199,
		y = 1335.031494,
		z = 44.496986,
		heading = 154.996,
		effect = "clean"
	},
	-- Bronte mansion bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = 2365.649,
		y = -1211.780,
		z = 51.888,
		heading = 3.0,
		effect = "clean"
	},
	-- Rhodes bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = 1336.350,
		y = -1377.972,
		z = 84.345,
		heading = -96.693,
		effect = "clean"
	},
	-- Tumbleweed bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = -5513.196,
		y = -2972.139,
		z = -0.75,
		heading = 108.131,
		effect = "clean"
	},
	-- Van Horn bath
	{
		radius = 2.0,
		animations = BathingAnimations,
		x = 2987.698,
		y = 573.760,
		z = 47.920,
		heading = 171.942,
		effect = "clean"
	},
	{
		objects = {
			"p_bath03x"
		},
		radius = 2.0,
		animations = BathingAnimations,
		x = -0.5,
		y = 0.0,
		z = 0.65,
		heading = 270.0,
		effect = "clean"
	},
	{
		objects = {
			"p_bed14x",
			"p_bed17x",
			"p_bed21x",
			"p_bedbunk03x",
			"p_bedindian02x",
			"p_cot01x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = -0.05,
		y = 0.0,
		z = 1.5,
		heading = 0.0
	},
	{
		objects = {
			"p_bed14x",
			"p_bed17x",
			"p_bed21x",
			"p_bedbunk03x",
			"p_bedindian02x",
			"p_cot01x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = 0.0,
		z = 1.5,
		heading = 190.0
	},
	{
		objects = {
			"p_bedking02x"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = -0.55,
		y = 0.5,
		z = 1.5,
		heading = 0.0
	},
	{
		objects = {
			"p_bedking02x"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.45,
		y = 0.5,
		z = 1.5,
		heading = 0.0
	},
	{
		objects = {
			"p_bedking02x"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = -0.5,
		y = 0.5,
		z = 1.5,
		heading = -170.0
	},
	{
		objects = {
			"p_bedking02x"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.5,
		y = 0.5,
		z = 1.5,
		heading = -170.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = -0.3,
		z = 1.5,
		heading = 280.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = 0.3,
		z = 1.5,
		heading = 280.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.0,
		y = -0.3,
		z = 1.5,
		heading = 90.0
	},
	{
		objects = {
			"p_cs_bedsleptinbed08x"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.0,
		y = 0.3,
		z = 1.5,
		heading = 90.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = -0.3,
		y = 0.0,
		z = 1.5,
		heading = 190.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.3,
		y = 0.0,
		z = 1.5,
		heading = 190.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = -0.35,
		y = 0.0,
		z = 1.5,
		heading = 0.0
	},
	{
		objects = {
			"p_bed20madex",
			"p_cs_pro_bed_unmade",
			"p_cs_bed20madex"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.25,
		y = 0.0,
		z = 1.5,
		heading = 0.0
	},
	{
		objects = {
			"p_cs_ann_wrkr_bed01x",
			"p_cs_roc_hse_bed",
			"p_medbed01x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.0,
		y = 0.0,
		z = 1.85,
		heading = 90.0
	},
	{
		objects = {
			"p_cs_ann_wrkr_bed01x",
			"p_cs_roc_hse_bed",
			"p_medbed01x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = 0.0,
		z = 1.85,
		heading = 280.0
	},
	{
		objects = {
			"p_bedrollopen01x",
			"p_bedrollopen03x",
			"p_re_bedrollopen01x",
			"s_bedrollfurlined01x",
			"s_bedrollopen01x",
			"p_amb_mattress04x",
			"p_mattress04x",
			"p_mattress07x",
			"p_mattresscombined01x"
		},
		radius = 1.5,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = -0.1,
		y = 0.0,
		z = 1.0,
		heading = 0.0
	},
	{
		objects = {
			"p_bedrollopen01x",
			"p_bedrollopen03x",
			"p_re_bedrollopen01x",
			"s_bedrollfurlined01x",
			"s_bedrollopen01x",
			"p_amb_mattress04x",
			"p_mattress04x",
			"p_mattress07x",
			"p_mattresscombined01x"
		},
		radius = 1.5,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = 0.0,
		z = 1.0,
		heading = 190.0
	},
	{
		objects = {
			"p_bed10x",
			"p_bed12x",
			"p_bed13x",
			"p_bed22x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = 0.0,
		z = 1.8,
		heading = 190.0
	},
	{
		objects = {
			"p_bed10x",
			"p_bed12x",
			"p_bed13x",
			"p_bed22x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.0,
		y = 0.0,
		z = 1.8,
		heading = 0.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = -0.3,
		y = 0.0,
		z = 1.8,
		heading = 0.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.3,
		y = 0.0,
		z = 1.8,
		heading = 0.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "right",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = -0.3,
		y = 0.0,
		z = 1.8,
		heading = 190.0
	},
	{
		objects = {
			"p_bed20x"
		},
		label = "left",
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.3,
		y = 0.0,
		z = 1.8,
		heading = 190.0
	},
	{
		objects = {
			"p_ambbed01x",
			"p_bed03x",
			"p_bed09x",
			"p_bedindian01x",
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = 0.0,
		z = 1.5,
		heading = 280.0
	},
	{
		objects = {
			"p_ambbed01x",
			"p_bed03x",
			"p_bed09x",
			"p_bedindian01x",
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = 0.0,
		y = -0.03,
		z = 1.5,
		heading = 90.0
	},
	{
		objects = {
			"p_bed05x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Top", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_female"}
		},
		x = -0.075,
		y = -0.3,
		z = 1.5,
		heading = 0.0
	},
	{
		objects = {
			"p_bed05x"
		},
		radius = 2.0,
		animations = {
			{label = "Sex: Bottom", dict = "script_story@sal1@ig@sal1_18_lenny_on_lenny", name = "loop_male"}
		},
		x = 0.0,
		y = -0.3,
		z = 1.5,
		heading = 190.0
	}
}
