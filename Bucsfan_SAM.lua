require 'organizer-lib'

-- *** Credit goes to Flippant for helping me with Gearswap *** --
-- ** I Use Motenten's Macro Book Function ** --
-- Last Updated: 05/02/14 8:00 PM *Added RA Sets* --

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC","Crit"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. First Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below. Most of These Sets Are Empty So You Need To Edit Them On Your Own. Remember To Check What The Combined Set Is For Each Sets. Can Delete Lentus If You Don't Need It. --
	WeaponIndex = 1
	WeaponArray = {"Masamune","Amanomurakumo","Ichigohitofuri"} -- Default TP Set Is Masamune. Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	IdleIndex = 1
	IdleArray = {"Movement","Regen","Craft"} -- Default Idle Set Is Movement --
	Armor = 'None'
	Twilight = 'None'
	CP = 'None'
	warning = false
	Attack = 'OFF' -- Set Default Attack Set ON or OFF Here --
	Hasso = 'ON' -- Set Default Hasso Set ON or OFF Here --
	Third_Eye = 'ON' -- Set Default Third Eye Set ON or OFF Here --
	ammo_warning_limit = 10 -- Set Ammo Limit Check Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	sc_map = {SC1="TachiFudo", SC2="TachiRana", SC3="NamasArrow"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	sets.Idle = {}
	-- Idle/Town Sets --
	sets.Idle.Regen = {
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet={ name="Rao Sune-Ate +1", augments={'HP+65','Crit. hit rate+4%','"Dbl.Atk."+4',}},
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"}
	sets.Idle.Craft = {
			sub="Joiner's Aspis",
			body="Carpenter's Smock",
			hands="Carpenter's Gloves",
			ring1="Artificer's Ring",
			ring2="Craftkeeper's Ring"}
	sets.Idle.Regen.Masamune = set_combine(sets.Idle.Regen,{
			main="Masamune",
			sub="Nepenthe Grip +1",
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet={ name="Rao Sune-Ate +1", augments={'HP+65','Crit. hit rate+4%','"Dbl.Atk."+4',}},
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	sets.Idle.Regen.Amanomurakumo = set_combine(sets.Idle.Regen,{
			main="Amanomurakumo",
			sub="Nepenthe Grip +1",
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet={ name="Rao Sune-Ate +1", augments={'HP+65','Crit. hit rate+4%','"Dbl.Atk."+4',}},
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	sets.Idle.Regen.Masamune = set_combine(sets.Idle.Regen,{
			main="Masamune",
			sub="Nepenthe Grip +1",
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet={ name="Rao Sune-Ate +1", augments={'HP+65','Crit. hit rate+4%','"Dbl.Atk."+4',}},
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Danzo Sune-Ate",
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	sets.Idle.Movement.Ichigohitofuri = set_combine(sets.Idle.Movement,{
			main="Ichigohitofuri",
			sub="Nepenthe Grip +1",
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Danzo Sune-Ate",
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	sets.Idle.Movement.Masamune = set_combine(sets.Idle.Movement,{
			main="Masamune",
			sub="Nepenthe Grip +1",
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Danzo Sune-Ate",
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	sets.Idle.Movement.Amanomurakumo = set_combine(sets.Idle.Movement,{
			main="Amanomurakumo",
			sub="Nepenthe Grip +1",
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Danzo Sune-Ate",
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	sets.Idle.Movement.Masamune = set_combine(sets.Idle.Movement,{
			main="Masamune",
			sub="Nepenthe Grip +1",
			ammo="Ginsen",
			head={ name="Rao Kabuto", augments={'STR+9','DEX+9','Attack+14',}},
			body="Hiza. Haramaki +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Danzo Sune-Ate",
			neck="Sanctity Necklace",
			waist="Flume Belt",
			left_ear="Sanare Earring",
			right_ear="Hearty Earring",
			left_ring="Sheltered Ring",
			right_ring="Paguroidea Ring",
			back="Moonbeam Cape"})
	
	sets.Twilight = {head="Twilight Helm",body="Twilight Mail"}
	
	sets.CP = {back="Aptitude Mantle +1"}

	-- Preshot Set --
	sets.Preshot = {}

	-- Midshot Sets --
	sets.Midshot = {}
	sets.Midshot.MidACC = set_combine(sets.Midshot,{})
	sets.Midshot.HighACC = set_combine(sets.Midshot.MidACC,{})

	-- TP Base Set --
	sets.TP = {
			head="Flam. Zucchetto +2",
			body="Kasuga Domaru +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet={ name="Ryuo Sune-Ate", augments={'STR+10','Attack+20','Crit. hit rate+3%',}},
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Trux Earring",
			right_ear="Tripudio Earring",
			left_ring="Petrov Ring",
			right_ring="Chirich Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}}
			
	-- Ichigohitofuri TP Sets --
	sets.TP.Ichigohitofuri = {
			head="Flam. Zucchetto +2",
			body="Kasuga Domaru +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet={ name="Ryuo Sune-Ate", augments={'STR+10','Attack+20','Crit. hit rate+3%',}},
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Trux Earring",
			right_ear="Tripudio Earring",
			left_ring="Petrov Ring",
			right_ring="Chirich Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}}
			
	sets.TP.Ichigohitofuri.MidACC = set_combine(sets.TP.Ichigohitofuri,{
			head="Flam. Zucchetto +2",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}})
			
	sets.TP.Ichigohitofuri.HighACC = set_combine(sets.TP.Ichigohitofuri.MidACC,{
			head="Flam. Zucchetto +2",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			legs="Flamma Dirs +1",
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Telos Earring",
			right_ear="Mache Earring",
			left_ring="Flamma Ring",
			right_ring="Chirich Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}})
			
	sets.TP.Ichigohitofuri.Crit = set_combine(sets.TP.Ichigohitofuri.HighACC,{
			head="Rao Kabuto",
			neck="Nefarious Collar",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			body="Ken. Samue",
			hands="Wakido Kote +1",
			ring1="Petrov Ring",
			ring2="Rajas Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
			waist="Ioskeha Belt",
			legs="Hiza. Hizayoroi +2",
			feet="Rao Sune-Ate +1"})
			
	-- Masamune TP Sets --
	sets.TP.Masamune = {
			head="Flam. Zucchetto +2",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}}

			sets.TP.Masamune.MidACC = set_combine(sets.TP.Masamune,{
			head="Flam. Zucchetto +2",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}})
			
	sets.TP.Masamune.HighACC = set_combine(sets.TP.Masamune.MidACC,{
			head="Flam. Zucchetto +2",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			legs="Flamma Dirs +1",
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Telos Earring",
			right_ear="Mache Earring",
			left_ring="Flamma Ring",
			right_ring="Chirich Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}})

			sets.TP.Masamune.Crit = set_combine(sets.TP.Masamune.HighACC,{
			head="Rao Kabuto",
			neck="Nefarious Collar",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			body="Ken. Samue",
			hands="Wakido Kote +1",
			ring1="Petrov Ring",
			ring2="Rajas Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
			waist="Ioskeha Belt",
			legs="Hiza. Hizayoroi +2",
			feet="Rao Sune-Ate +1"})
			
	-- Amanomurakumo(AM Down) TP Sets --
	sets.TP.Amanomurakumo = {
			head="Flam. Zucchetto +2",
			body="Kasuga Domaru +1",
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet={ name="Ryuo Sune-Ate", augments={'STR+10','Attack+20','Crit. hit rate+3%',}},
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Trux Earring",
			right_ear="Tripudio Earring",
			left_ring="Petrov Ring",
			right_ring="Chirich Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}}

			sets.TP.Amanomurakumo.MidACC = set_combine(sets.TP.Amanomurakumo,{
			head="Flam. Zucchetto +2",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			legs={ name="Ryuo Hakama +1", augments={'Accuracy+25','"Store TP"+5','Phys. dmg. taken -4',}},
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			left_ring="Petrov Ring",
			right_ring="Rajas Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}})
			
	sets.TP.Amanomurakumo.HighACC = set_combine(sets.TP.Amanomurakumo.MidACC,{
			head="Flam. Zucchetto +2",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			legs="Flamma Dirs +1",
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Ioskeha Belt",
			left_ear="Telos Earring",
			right_ear="Mache Earring",
			left_ring="Flamma Ring",
			right_ring="Chirich Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}})
	
	sets.TP.Amanomurakumo.Crit = set_combine(sets.TP.Amanomurakumo.HighACC,{
			head="Rao Kabuto",
			neck="Nefarious Collar",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			body="Ken. Samue",
			hands="Wakido Kote +1",
			ring1="Petrov Ring",
			ring2="Rajas Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
			waist="Ioskeha Belt",
			legs="Hiza. Hizayoroi +2",
			feet="Rao Sune-Ate +1"})
			
	sets.TP.Random = {
			head="Flam. Zucchetto +2",
			neck="Sam. Nodowa +1",
			left_ear="Telos Earring",
			right_ear="Brutal Earring",
			body="Wakido Domaru +2",
			hands="Flam. Manopolas +1",
			ring1="Petrov Ring",
			ring2="Flamma Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
			waist="Ioskeha Belt",
			legs="Flamma Dirs +1",
			feet="Flamma Gambieras +2"}
	-- PDT/MDT Sets --
	sets.PDT = {
			ammo="Staunch Tathlum",
			neck="Twilight Torque",
			body="Wakido Domaru +2",
			hands="Sakonji Kote +1",
			ring1="Patricius Ring",
			ring2="Defending Ring",
			back="Moonbeam Cape",
			waist="Flume Belt",
			feet="Sak. Sune-Ate +1"}

	sets.MDT = {
			ammo="Staunch Tathlum",
			head="Naga Somen",
			neck="Twilight Torque",
			ear2="Sanare Earring",
			body="Ken. Samue",
			back="Moonbeam Cape",
			legs="Sakonji Haidate +2",
			waist="Carrier's Sash",
			feet="Flam. Gambieras +1",
			ring1="Defending Ring",
			ring2="Archon Ring",
			back="Moonbeam Cape"}

	-- Hybrid Sets --
	sets.TP.Hybrid = {
			ammo="Staunch Tathlum",
			head="Flamma Zucchetto +2",
			neck="Loricate Torque +1",
			ear2="Telos Earring",
			ear1="Odnowa Earring +1",
			body="Wakido Domaru +2",
			hands="Wakido Kote +1",
			ring2="Defending Ring",
			ring1="Ilabrat Ring",
			back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
			waist="Ioskeha Belt +1",
            legs="Kendatsuba Hakama",
			feet="Flamma Gambieras +2",}
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	-- WS Base Set --
	sets.WS = {
			head="Rao Kabuto",
			neck="Caro Necklace",
			ear1="Ishvara Earring",
			ear2="Brutal Earring",
			body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','INT+10','Attack+11',}},
			hands="Rao Kote +1",
			ring1="Ifrit Ring",
			ring2="Ifrit Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Damage taken-5%',}},
			waist="Fotia Belt",
			legs="Valor. Hose",
			feet="Ryuo Sune-Ate"}

	-- Meikyo Shisui --
	sets.WS["Tachi: Fudo"] = {
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','INT+10','Attack+11',}},
    hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Valor. Hose", augments={'Attack+1','Weapon skill damage +4%','VIT+8',}},
    feet="Flam. Gambieras +2",
    neck="Sam. Nodowa +1",
    waist="Prosilio Belt +1",
    left_ear="Telos Earring",
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring",
    right_ring="Ifrit Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Damage taken-5%',}}}
	
	sets.WS["Tachi: Fudo"].MidACC = set_combine(sets.WS["Tachi: Fudo"],{
			head="Flamma Zucchetto +2"})
	sets.WS["Tachi: Fudo"].HighACC = set_combine(sets.WS["Tachi: Fudo"].MidACC,{
			waist="Fotia Belt"})
	sets.WS["Tachi: Fudo"].Crit = set_combine(sets.WS["Tachi: Fudo"].HighACC,{
			ring1="Patricius Ring",})

	-- Tachi: Shoha Sets --
	sets.WS["Tachi: Shoha"] = {
			head="Flam. Zucchetto +2",
			body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','INT+10','Attack+11',}},
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Valor. Hose", augments={'Attack+1','Weapon skill damage +4%','VIT+8',}},
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Prosilio Belt +1",
			left_ear="Ishvara Earring",
			right_ear="Brutal Earring",
			left_ring="Ifrit Ring",
			right_ring="Ifrit Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Damage taken-5%',}}}

			sets.WS["Tachi: Shoha"].MidACC = set_combine(sets.WS["Tachi: Shoha"],{
						head="Flamma Zucchetto +2"})
	sets.WS["Tachi: Shoha"].HighACC = set_combine(sets.WS["Tachi: Shoha"].MidACC,{
						head="Flamma Zucchetto +2",waist="Fotia Belt"})
	sets.WS["Tachi: Shoha"].Crit = set_combine(sets.WS["Tachi: Shoha"].HighACC,{
			ring1="Patricius Ring",})
			
	sets.WS["Tachi: Kaiten"] = {
			head="Flam. Zucchetto +2",
			body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','INT+10','Attack+11',}},
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Valor. Hose", augments={'Attack+1','Weapon skill damage +4%','VIT+8',}},
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Prosilio Belt +1",
			left_ear="Ishvara Earring",
			right_ear="Brutal Earring",
			left_ring="Ifrit Ring",
			right_ring="Ifrit Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Damage taken-5%',}}}
	
	sets.WS["Tachi: Kaiten"].MidACC = set_combine(sets.WS["Tachi: Kaiten"],{head="Flamma Zucchetto +2"})
	sets.WS["Tachi: Kaiten"].HighACC = set_combine(sets.WS["Tachi: Kaiten"].MidACC,{waist="Fotia Belt"})
	sets.WS["Tachi: Kaiten"].Crit = set_combine(sets.WS["Tachi: Kaiten"].HighACC,{ring1="Patricius Ring",})
			
	-- Tachi: Rana Sets --
	sets.WS["Tachi: Rana"] = {
			head="Flam. Zucchetto +2",
			body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','INT+10','Attack+11',}},
			hands={ name="Rao Kote +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs={ name="Valor. Hose", augments={'Attack+1','Weapon skill damage +4%','VIT+8',}},
			feet="Flam. Gambieras +2",
			neck="Sam. Nodowa +1",
			waist="Prosilio Belt +1",
			left_ear="Ishvara Earring",
			right_ear="Brutal Earring",
			left_ring="Ifrit Ring",
			right_ring="Ifrit Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Damage taken-5%',}}}
	sets.WS["Tachi: Rana"].MidACC = set_combine(sets.WS["Tachi: Rana"],{
			head="Flamma Zucchetto +2"})
	sets.WS["Tachi: Rana"].HighACC = set_combine(sets.WS["Tachi: Rana"].MidACC,{
			head="Flamma Zucchetto +2",waist="Fotia Belt"})
	sets.WS["Tachi: Rana"].Crit = set_combine(sets.WS["Tachi: Rana"].HighACC,{
			ring1="Patricius Ring",})
	-- Tachi: Ageha Sets --
	sets.WS["Tachi: Ageha"] = {
			head="Flamma Zucchetto +2",
			neck="Caro Necklace",
			ear1="Ishvara Earring",
			ear2="Brutal Earring",
			body={ name="Valorous Mail", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','INT+10','Attack+11',}},
			hands="Flam. Manopolas +1",
			ring1="Ifrit Ring",
			ring2="Ifrit Ring",
			back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Damage taken-5%',}},
			waist="Fotia Belt",
			legs="Flamma Dirs +1",
			feet="Flamma Gambieras +2"}

	-- JA Sets --
	sets.JA = {}
	sets.JA.Meditate = {head="Wakido Kabuto +1",hands="Sakonji Kote +1",back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%','Damage taken-5%',}}}
	sets.JA.Warding_Circle = {head="Wakido Kabuto +1"}
	sets.JA.Seigan = {head="Kasuga Kabuto"}
	sets.JA.Sekkanoki = {"Kasuga Kote"}
	sets.JA.Hasso = {hands="Wakido Kote +1",legs="Kasuga Haidate"}
	sets.JA.Sengikori = {feet="Kasuga Sune-ate"}
	sets.JA.Zanshin = {feet="Waki. Sune-ate +1"}
	sets.JA.Meikyo_Shisui = {feet="Sak. Sune-Ate +1"}

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
			neck="Orunmila's Torque",
			ear1="Loquac. Earring"}

	sets.Midcast = {}
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{})
end

function pretarget(spell,action)
	if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.action_type == 'Ability' and buffactive.doom then -- Auto Use Holy Water If You Are Doomed --
		cancel_spell()
		send_command('input /item "Holy Water" <me>')
	elseif spell.action_type == 'Ability' and buffactive.curse then -- Auto Use Holy Water If You Are Cursed --
		cancel_spell()
		send_command('input /item "Holy Water" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
		cancel_spell()
		send_command('ThirdEye')
	elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 290 --
		cancel_spell()
		add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	elseif spell.action_type == 'Ranged Attack' and spell.target.distance > 24.9 then
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	elseif spell.type == 'WeaponSkill' and player.status == 'Engaged' then
		if spell.skill == 'Archery' then
			if spell.target.distance > 16+target_distance then
				cancel_spell()
				add_to_chat(123, spell.name..' Canceled: [Out of Range]')
				return
			end
		end
	end
end

fudoDays = S{'Lightsday','Windsday','Lightningday','Firesday'}
shohaDays = S{'Windsday','Lighningday','Darksday'}
function precast(spell,action)
	if spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.WS
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			if buffactive["Meikyo Shisui"] then -- Sakonji Sune-ate +1 When Meikyo Shisui Is On --
				equipSet = equip(sets.WS.Meikyo)
			end
			if buffactive.Sekkanoki then -- Equip Kasuga Kote When Sekkanoki Is On --
				equipSet = set_combine(equipSet,{hands="Kasuga Kote"})
			end
			if buffactive.Sengikori then -- Equip Kasuga Sune-ate When Sengikori Is On --
				equipSet = set_combine(equipSet,{feet="Kasuga Sune-ate"})
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.action_type == 'Magic' then
		if string.find(spell.english,'Utsusemi') then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
				return
			else
				equip(sets.Precast.FastCast)
			end
		else
			equip(sets.Precast.FastCast)
		end
	elseif spell.type == "Waltz" then
		refine_waltz(spell,action)
		equip(sets.Waltz)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function midcast(spell,action)
	if spell.action_type == 'Ranged Attack' then
		equipSet = sets.Midshot
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		equip(equipSet)
	elseif spell.action_type == 'Magic' then
		if string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equip(sets.Midcast.Haste)
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equip(sets.Midcast.Haste)
		else
			equip(sets.Midcast.Haste)
		end
	end
end

function aftercast(spell,action)
	if not spell.interrupted then
		if spell.type == "WeaponSkill" then
			send_command('wait 0.2;gs c TP')
		elseif spell.english == "Warding Circle" then -- Warding Circle Countdown --
			send_command('wait 260;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..': [OFF]')
		end
	end
	status_change(player.status)
end

function status_change(new,old)
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive["Aftermath: Lv.3"] and equipSet["AM3"] then
			equipSet = equipSet["AM3"]
		end
		if buffactive.Ionis and equipSet["Ionis"] then
			equipSet = equipSet["Ionis"]
		end
		if buffactive.Hasso and Hasso == 'ON' then -- Use Hasso Toggle For Hasso TP Set --
			equipSet = set_combine(equipSet,sets.TP.Hasso)
		end
		if buffactive["Third Eye"] and Third_Eye == 'ON' then -- Use Third Eye Toggle For Third Eye TP Set --
			equipSet = set_combine(equipSet,sets.TP["Third Eye"])
		end
		equip(equipSet)
	else
		equipSet = sets.Idle
		if equipSet[IdleArray[IdleIndex]] then
			equipSet = equipSet[IdleArray[IdleIndex]]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		equip(equipSet)
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
	if CP == 'CP' then
		equip(sets.CP)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer/Countdown --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(123,'AM3: [OFF]')
		end
	elseif buff == "perfect defense" then -- PD Timer --
		if gain then
			send_command('timers create "Perfect Defense" 57 down')
		else
			send_command('timers delete "Perfect Defense"')
			add_to_chat(123,'PD: [OFF]')
		end
	elseif buff == "yaegasumi" then -- Yaegasumi Timer --
		if gain then
			send_command('timers create "Yaegasumi" 45 down')
		else
			send_command('timers delete "Yaegasumi"')
			add_to_chat(123,'Yaegasumi: [OFF]')
		end
	elseif buff == 'weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if buff == "sleep" and gain and player.hp > 200 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep & Have 200+ HP --
		equip({neck="Berserker's Torque"})
	else
		if not midaction() then
			status_change(player.status)
		end
	end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- Accuracy Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: '..AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'C17' then -- Main Weapon Toggle --
		WeaponIndex = (WeaponIndex % #WeaponArray) + 1
		add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C2' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
		end
		status_change(player.status)
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C15' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C16' then -- Hasso Toggle --
		if Hasso == 'ON' then
			Hasso = 'OFF'
			add_to_chat(123,'Hasso Set: [Unlocked]')
		else
			Hasso = 'ON'
			add_to_chat(158,'Hasso Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C12' then -- Third Eye Toggle --
		if Third_Eye == 'ON' then
			Third_Eye = 'OFF'
			add_to_chat(123,'Third Eye Set: [Unlocked]')
		else
			Third_Eye = 'ON'
			add_to_chat(158,'Third Eye Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C3' then -- Twilight Toggle --
		if Twilight == 'Twilight' then
			Twilight = 'None'
			add_to_chat(123,'Twilight Set: [Unlocked]')
		else
			Twilight = 'Twilight'
			add_to_chat(158,'Twilight Set: [locked]')
		end
		status_change(player.status)
	elseif command == 'C4' then -- CP Toggle --
		if CP == 'CP' then
			CP = 'None'
			add_to_chat(123,'CP Set: [Unlocked]')
		else
			CP = 'CP'
			add_to_chat(158,'CP Set: [locked]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'C10' then -- Cancel Meikyo Shisui --
		send_command('Cancel Meikyo Shisui')
		add_to_chat(123,'Meikyo Shisui: [OFF]')
	elseif command == 'C6' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
		status_change(player.status)
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command:match('^SC%d$') then
		send_command('//'..sc_map[command])
	end
end

function refine_waltz(spell,action)
	if spell.type ~= 'Waltz' then
		return
	end

	if spell.name == "Healing Waltz" or spell.name == "Divine Waltz" then
		return
	end

	local newWaltz = spell.english
	local waltzID

	local missingHP

	if spell.target.type == "SELF" then
		missingHP = player.max_hp - player.hp
	elseif spell.target.isallymember then
		local target = find_player_in_alliance(spell.target.name)
		local est_max_hp = target.hp / (target.hpp/100)
		missingHP = math.floor(est_max_hp - target.hp)
	end

	if missingHP ~= nil then
		if player.sub_job == 'DNC' then
			if missingHP < 40 and spell.target.name == player.name then
				add_to_chat(123,'Full HP!')
				cancel_spell()
				return
			elseif missingHP < 150 then
				newWaltz = 'Curing Waltz'
				waltzID = 190
			elseif missingHP < 300 then
				newWaltz = 'Curing Waltz II'
				waltzID = 191
			else
				newWaltz = 'Curing Waltz III'
				waltzID = 192
			end
		else
			return
		end
	end

	local waltzTPCost = {['Curing Waltz'] = 200, ['Curing Waltz II'] = 350, ['Curing Waltz III'] = 500}
	local tpCost = waltzTPCost[newWaltz]

	local downgrade

	if player.tp < tpCost then

		if player.tp < 200 then
			add_to_chat(123, 'Insufficient TP ['..tostring(player.tp)..']. Cancelling.')
			cancel_spell()
			return
		elseif player.tp < 350 then
			newWaltz = 'Curing Waltz'
		elseif player.tp < 500 then
			newWaltz = 'Curing Waltz II'
		end

		downgrade = 'Insufficient TP ['..tostring(player.tp)..']. Downgrading to '..newWaltz..'.'
	end

	if newWaltz ~= spell.english then
		send_command('@input /ja "'..newWaltz..'" '..tostring(spell.target.raw))
		if downgrade then
			add_to_chat(8, downgrade)
		end
		cancel_spell()
		return
	end

	if missingHP > 0 then
		add_to_chat(8,'Trying to cure '..tostring(missingHP)..' HP using '..newWaltz..'.')
	end
end

function find_player_in_alliance(name)
	for i,v in ipairs(alliance) do
		for k,p in ipairs(v) do
			if p.name == name then
				return p
			end
		end
	end
end

function sub_job_change(newSubjob, oldSubjob)
	select_default_macro_book()
end

function set_macro_page(set,book)
	if not tonumber(set) then
		add_to_chat(123,'Error setting macro page: Set is not a valid number ('..tostring(set)..').')
		return
	end
	if set < 1 or set > 10 then
		add_to_chat(123,'Error setting macro page: Macro set ('..tostring(set)..') must be between 1 and 10.')
		return
	end

	if book then
		if not tonumber(book) then
			add_to_chat(123,'Error setting macro page: book is not a valid number ('..tostring(book)..').')
			return
		end
		if book < 1 or book > 20 then
			add_to_chat(123,'Error setting macro page: Macro book ('..tostring(book)..') must be between 1 and 20.')
			return
		end
		send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(set))
	else
		send_command('@input /macro set '..tostring(set))
	end
end

function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'WAR' then
		set_macro_page(4, 6)
	elseif player.sub_job == 'DNC' then
		set_macro_page(2, 6)
	elseif player.sub_job == 'DRK' then
		set_macro_page(2, 6)
	elseif player.sub_job == 'NIN' then
		set_macro_page(5, 6)
	else
		set_macro_page(1, 6)
	end
end