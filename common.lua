function IsPedChild(ped)
	return Citizen.InvokeNative(0x137772000DAF42C5, ped)
end

function PlayerPedIsHuman()
	return IsPedHuman(PlayerPedId())
end

function PlayerPedIsAdult()
	return not IsPedChild(PlayerPedId())
end

function PlayerPedIsChild()
	return IsPedChild(PlayerPedId())
end

function PlayerPedIsMale()
	return IsPedMale(PlayerPedId())
end

function PlayerPedIsFemale()
	return not IsPedMale(PlayerPedId())
end

function PlayerPedIsAdultMale()
	return PlayerPedIsAdult() and PlayerPedIsMale()
end

function PlayerPedIsAdultFemale()
	return PlayerPedIsAdult() and PlayerPedIsFemale()
end

GenericChairsAndBenches = {
	'mp005_s_posse_col_chair01x',
	'mp005_s_posse_foldingchair_01x',
	'mp005_s_posse_trad_chair01x',
	'p_ambchair01x',
	'p_ambchair02x',
	'p_armchair01x',
	'p_bistrochair01x',
	'p_bench03x',
	'p_bench06x',
	'p_bench08bx',
	'p_bench09x',
	'p_bench15_mjr',
	'p_bench15x',
	'p_bench17x',
	'p_bench18x',
	'p_bench20x',
	'p_benchbear01x',
	'p_benchch01x',
	'p_benchironnbx01x',
	'p_bench_log01x',
	'p_bench_log02x',
	'p_bench_log03x',
	'p_bench_log04x',
	'p_bench_log05x',
	'p_bench_log06x',
	'p_bench_log07x',
	'p_bench_logsnow07x',
	'p_benchnbx02x',
	'p_benchnbx03x',
	'p_benchpiano02x',
	'p_chair02x',
	'p_chair04x',
	'p_chair05x',
	'p_chair06x',
	'p_chair07x',
	'p_chair09x',
	'p_chair_10x',
	'p_chair11x',
	'p_chair12bx',
	'p_chair12x',
	'p_chair13x',
	'p_chair14x',
	'p_chair15x',
	'p_chair16x',
	'p_chair17x',
	'p_chair18x',
	'p_chair19x',
	'p_chair20x',
	'p_chair21x',
	'p_chair21x_fussar',
	'p_chair22x',
	'p_chair23x',
	'p_chair24x',
	'p_chair25x',
	'p_chair26x',
	'p_chair27x',
	'p_chair30x',
	'p_chair31x',
	'p_chair37x',
	'p_chair38x',
	'p_chair_barrel04b',
	'p_chaircomfy01x',
	'p_chaircomfy02',
	'p_chaircomfy03x',
	'p_chaircomfy04x',
	'p_chaircomfy05x',
	'p_chaircomfy06x',
	'p_chaircomfy07x',
	'p_chaircomfy08x',
	'p_chaircomfy09x',
	'p_chaircomfy10x',
	'p_chaircomfy11x',
	'p_chaircomfy12x',
	'p_chaircomfy14x',
	'p_chaircomfy17x',
	'p_chaircomfy18x',
	'p_chaircomfy22x',
	'p_chaircomfy23x',
	'p_chair_crate02x',
	'p_chair_crate15x',
	'p_chair_cs05x',
	'p_chairdesk01x',
	'p_chairdesk02x',
	'p_chairdining01x',
	'p_chairdining02x',
	'p_chairdining03x',
	'p_chaireagle01x',
	'p_chairfolding02x',
	'p_chairhob01x',
	'p_chairhob02x',
	'p_chairmed01x',
	'p_chairmed02x',
	'p_chairoffice02x',
	'p_chairpokerfancy01x',
	'p_chairporch01x',
	'p_chair_privatedining01x',
	'p_chairrocking02x',
	'p_chairrocking03x',
	'p_chairrocking04x',
	'p_chairrocking05x',
	'p_chairrocking06x',
	'p_chairrustic01x',
	'p_chairrustic02x',
	'p_chairrustic03x',
	'p_chairrustic04x',
	'p_chairrustic05x',
	'p_chairsalon01x',
	'p_chairvictorian01x',
	'p_chairwhite01x',
	'p_chairwicker01x',
	'p_chairwicker02x',
	'p_cs_electricchair01x',
	'p_diningchairs01x',
	'p_gen_chair07x',
	'p_hallbench01x',
	'p_oldarmchair01x',
	'p_pianochair01x',
	'p_privatelounge_chair01x',
	'p_rockingchair01x',
	'p_rockingchair02x',
	'p_rockingchair03x',
	'p_seatbench01x',
	'p_windsorbench01x',
	'p_windsorchair01x',
	'p_windsorchair02x',
	'p_windsorchair03x',
	'p_woodbench02x',
	's_bench01x'
}
