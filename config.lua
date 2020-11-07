Config = {}

-- Control to start/stop interactions. Comment this out to disable the control.
Config.InteractControl = 0x2EAB0795 -- E

Config.MarkerType = 0x94FDAE17

Config.MarkerColor = {254, 127, 156, 128}

-- List of interactable types of objects.
Config.Interactions = {
	-- Pianos
	{
		isCompatible = PlayerPedIsHuman,
		objects = {'p_piano03x'},
		radius = 2.0,
		scenarios = {
			{name = 'PROP_HUMAN_PIANO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_ABIGAIL_PIANO', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.70,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {'p_piano02x'},
		radius = 2.0,
		scenarios = {
			{name = 'PROP_HUMAN_PIANO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_ABIGAIL_PIANO', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.70,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {'p_nbxpiano01x'},
		radius = 2.0,
		scenarios = {
			{name = 'PROP_HUMAN_PIANO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_ABIGAIL_PIANO', isCompatible = PlayerPedIsFemale}
		},
		x = -0.1,
		y = -0.75,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsHuman,
		objects = {'p_nbmpiano01x'},
		radius = 2.0,
		scenarios = {
			{name = 'PROP_HUMAN_PIANO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_ABIGAIL_PIANO', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.77,
		z = 0.5,
		heading = 0.0
	},
	{
		objects = {'sha_man_piano01'},
		radius = 2.0,
		scenarios = {
			{name = 'PROP_HUMAN_PIANO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_ABIGAIL_PIANO', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.75,
		z = 0.5,
		heading = 0.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = GenericChairsAndBenches,
		radius = 1.5,
		scenarios = {
			{name = 'GENERIC_SEAT_BENCH_SCENARIO'},
			{name = 'GENERIC_SEAT_CHAIR_SCENARIO', isCompatible = PlayerPedIsMale},
			{name = 'GENERIC_SEAT_CHAIR_TABLE_SCENARIO'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_DRINKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_SMOKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_WHITTLE'},
			{name = 'PROP_CAMP_FIRE_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_CAMP_FIRE_SEAT_BOX'},
			{name = 'PROP_HUMAN_SEAT_BENCH_CONCERTINA', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_FIDDLE', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_BENCH_JAW_HARP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_MANDOLIN', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_BANJO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_RIFLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_SADDLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CRAB_TRAP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CIGAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_GROSS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_POSH', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GUITAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNITTING', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_PORCH'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_READING', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsMale,
		objects = GenericChairsAndBenches,
		radius = 1.5,
		scenarios = {
			{name = 'PROP_HUMAN_SEAT_BENCH_HARMONICA'}
		},
		x = 0.0,
		y = -0.3,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdultFemale,
		objects = GenericChairsAndBenches,
		radius = 1.5,
		scenarios = {
			{name = 'PROP_HUMAN_SEAT_CHAIR_FAN'}
		},
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 240.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {'p_chairrusticsav01x'},
		radius = 1.5,
		scenarios = {
			{name = 'GENERIC_SEAT_BENCH_SCENARIO'},
			{name = 'GENERIC_SEAT_CHAIR_SCENARIO'},
			{name = 'GENERIC_SEAT_CHAIR_TABLE_SCENARIO'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_DRINKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_SMOKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_WHITTLE'},
			{name = 'PROP_CAMP_FIRE_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_CAMP_FIRE_SEAT_BOX'},
			{name = 'PROP_HUMAN_SEAT_BENCH_CONCERTINA', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_FIDDLE', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_BENCH_JAW_HARP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_MANDOLIN', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_BANJO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_RIFLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_SADDLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CRAB_TRAP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CIGAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_GROSS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_POSH', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GUITAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNITTING', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_PORCH'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_READING', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = -0.1,
		z = 0.5,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsAdult,
		objects = {'p_chairtall01x'},
		radius = 1.5,
		scenarios = {
			{name = 'GENERIC_SEAT_BENCH_SCENARIO'},
			{name = 'GENERIC_SEAT_CHAIR_SCENARIO'},
			{name = 'GENERIC_SEAT_CHAIR_TABLE_SCENARIO'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_DRINKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_SMOKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_WHITTLE'},
			{name = 'PROP_CAMP_FIRE_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_CAMP_FIRE_SEAT_BOX'},
			{name = 'PROP_HUMAN_SEAT_BENCH_CONCERTINA', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_FIDDLE', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_BENCH_JAW_HARP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_MANDOLIN', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_BANJO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_RIFLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_SADDLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CRAB_TRAP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CIGAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_GROSS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_POSH', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GUITAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNITTING', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_PORCH'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_READING', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = 0.0,
		z = 0.8,
		heading = 180.0
	},
	{
		isCompatible = PlayerPedIsChild,
		objects = GenericChairsAndBenches,
		radius = 1.5,
		scenarios = {
			{name = 'GENERIC_SEAT_BENCH_SCENARIO'},
			{name = 'GENERIC_SEAT_CHAIR_SCENARIO', isCompatible = PlayerPedIsMale},
			{name = 'GENERIC_SEAT_CHAIR_TABLE_SCENARIO'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_DRINKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_BENCH_PORCH_SMOKING'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS'},
			{name = 'MP_LOBBY_PROP_HUMAN_SEAT_CHAIR_WHITTLE'},
			{name = 'PROP_CAMP_FIRE_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_CAMP_FIRE_SEAT_BOX'},
			{name = 'PROP_HUMAN_SEAT_BENCH_CONCERTINA', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_FIDDLE', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_BENCH_JAW_HARP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_BENCH_MANDOLIN', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_BANJO', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_RIFLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CLEAN_SADDLE'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CRAB_TRAP', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_CIGAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_GROSS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GROOMING_POSH', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_GUITAR', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNIFE_BADASS', isCompatible = PlayerPedIsMale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_KNITTING', isCompatible = PlayerPedIsFemale},
			{name = 'PROP_HUMAN_SEAT_CHAIR_PORCH'},
			{name = 'PROP_HUMAN_SEAT_CHAIR_READING', isCompatible = PlayerPedIsFemale}
		},
		x = 0.0,
		y = 0.0,
		z = 0.4,
		heading = 180.0
	},
	{
		objects = {
			'p_bed14x',
			'p_bed17x',
			'p_bed21x',
			'p_bedbunk03x',
			'p_bedindian02x'
		},
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			'p_bed20madex',
			'p_cs_pro_bed_unmade',
			'p_cs_bed20madex'
		},
		label = 'right',
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = -0.3,
		y = -0.2,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			'p_bed20madex',
			'p_cs_pro_bed_unmade',
			'p_cs_bed20madex'
		},
		label = 'left',
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.3,
		y = -0.2,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			'p_ambbed01x',
			'p_bed03x',
			'p_bed09x',
			'p_bedindian01x',
		},
		radius = 1.5,
		scenarios = SleepingScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.5,
		heading = 270.0
	},
	{
		objects = {
			'p_bed05x'
		},
		radius = 1.5,
		scenarios = SleepingScenarios,
		x = 0.0,
		y = -0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			'p_bed10x',
			'p_bed12x',
			'p_bed13x',
			'p_bed22x'
		},
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.0,
		y = -0.3,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			'p_bed20x'
		},
		label = 'right',
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = -0.3,
		y = -0.2,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			'p_bed20x'
		},
		label = 'left',
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.3,
		y = -0.2,
		z = 0.8,
		heading = 180.0
	},
	{
		objects = {
			'p_bedking02x'
		},
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = -0.5,
		y = 0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			'p_bedking02x'
		},
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.5,
		y = 0.5,
		z = 0.5,
		heading = 180.0
	},
	{
		objects = {
			'p_bedrollopen01x',
			'p_bedrollopen03x',
			'p_re_bedrollopen01x',
			's_bedrollfurlined01x',
			's_bedrollopen01x',
			'p_amb_mattress04x',
			'p_mattress04x',
			'p_mattress07x',
			'p_mattresscombined01x'
		},
		radius = 1.5,
		scenarios = SleepingScenarios,
		x = 0.0,
		y = 0.0,
		z = 0.0,
		heading = 180.0
	},
	{
		objects = {
			'p_cs_ann_wrkr_bed01x',
			'p_cs_roc_hse_bed',
			'p_medbed01x'
		},
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.1,
		y = 0.0,
		z = 0.85,
		heading = 270.0
	},
	{
		objects = {
			'p_cs_bedsleptinbed08x'
		},
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.3,
		y = -0.3,
		z = 0.5,
		heading = 270.0
	},
	{
		objects = {
			'p_cs_bedsleptinbed08x'
		},
		radius = 2.0,
		scenarios = SleepingScenarios,
		x = 0.3,
		y = 0.3,
		z = 0.5,
		heading = 270.0
	}
}
