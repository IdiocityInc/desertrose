/datum/job/wasteland
	department_flag = WASTELAND

/*
Coven Stuff
*/

/datum/job/wasteland/covenwitch
	title = "Coven Witch"
	flag = EVENTCOVEN
	faction = "Coven"
	total_positions = 0
	spawn_positions = 0
	description = "You are a Witch of the Iron Coven. As the Witch you answer directly to the Exalted and the Matriarchs. The commanding officer in this region is a Matriarch by the name of The Harbinger. Circumstances may change the identity of the local commanding officer, but you will forevermore answer to the bidding of any and all Matriarchs. You are the equivilent of a Brotherhood Knight in rank, but your role has changed in the century since your people betrayed the Brotherhood of Steel. Witches are the primary military force of your organization. From far away to the east, in Dallas, New Orleans, and the sprawling metropolis that is Miami, you have come to do the bidding of the Grand Matriarch, your holy leader. She orders that the people of this region, like any other, be subjugated to her will. Your job is to organize missions to subvert the power of the local factions, spread scripture, protect and recruit citizens, and disperse technology to the people. The Matriarchs of the Coven have given you the permission to recruit and command your own squad, given that they eventually submit to the Iron Church's FEV treatment. You spread the scripture of the Iron Codex, you distribute technology to the masses and though you are in open war with the people of this area, it is your sworn duty to preserve all life in the name of fulfilling the Prophecy. All lives lost are a tragedy. In the eyes of your superiors, all deserve a chance to bask in the shadow of the Void."
	forbids = ""
	enforces = ""
	supervisors = "Exalted and the Matriarchs."
	selection_color = "#95a5a6"

	outfit = /datum/outfit/job/wasteland/covenwitch

/datum/outfit/job/wasteland/covenwitch
	name = "Coven Witch"
	jobtype = /datum/job/wasteland/covenwitch
	backpack = /obj/item/storage/backpack/satchel/leather
	ears = 			/obj/item/radio/headset/headset_sci
	glasses = 		/obj/item/clothing/glasses/night
	mask = 			/obj/item/clothing/mask/gas/syndicate
	uniform =		/obj/item/clothing/under/syndicate/combat
	suit = 			/obj/item/clothing/suit/hooded/cloak/goliath
	belt = 			/obj/item/storage/belt/military/army
	shoes = 		/obj/item/clothing/shoes/plate/red
	gloves = 		/obj/item/clothing/gloves/plate/red
	id = 			/obj/item/card/id/syndicate/anyone
	l_hand =		/obj/item/nullrod/claymore/darkblade
	suit_store =  	/obj/item/gun/ballistic/automatic/pistol/suppressed

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/flashlight/flare/culttorch=1,
		/obj/item/grenade/flashbang=1,
		/obj/item/pda=1,
		/obj/item/reagent_containers/glass/bottle/FEV_solution=1
		)
/*
Great Khans
*/
/datum/job/wasteland/f13genghis
	title = "Genghis Khan"
	flag = F13GENGHIS
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	total_positions = 1
	spawn_positions = 1
	description = "You are the Genghis Khan. One of the Sonoran Khan gang Leaders. You've put your time in and have shown you're not an idiot and can be trusted. You can lead, you understand how things are around here, you're not some run of the mill Khan hustling for pocket change and pussy.. You've earned your strips. You put blood down for the Khans. Your job is to keep your family safe, LEAD them and show them how we roll. Show them what it means to be a fucking Khan."
	supervisors = "Your pride"
	selection_color = "#f86a29"

	outfit = /datum/outfit/job/wasteland/f13genghis

	access = list(ACCESS_KHAN)
	minimal_access = list(ACCESS_KHAN)

	loadout_options = list(
	/datum/outfit/loadout/classic,
	/datum/outfit/loadout/marksman
	)

/datum/outfit/job/wasteland/f13genghis
	name = "Genghis Khan"
	jobtype = /datum/job/wasteland/f13genghis
	id = 		/obj/item/card/id/khantattoo
	ears = 		/obj/item/radio/headset
	belt = 		/obj/item/claymore/machete/reinforced
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel = 	/obj/item/storage/backpack/satchel/explorer
	uniform = /obj/item/clothing/under/f13/khan

/datum/outfit/job/wasteland/f13genghis/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/book/granter/trait/selection
	r_pocket = /obj/item/flashlight/flare
	l_pocket = /obj/item/storage/bag/money/small/khan
	backpack_contents = list(
		/obj/item/restraints/handcuffs=1, \
		/obj/item/restraints/legcuffs/bola=1, \
		/obj/item/reagent_containers/pill/patch/jet=2, \
		/obj/item/reagent_containers/pill/patch/medx=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1)
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan/battlecoat
	head = /obj/item/clothing/head/helmet/f13/khan/fullhelm
	shoes = /obj/item/clothing/shoes/f13/military/plated

/datum/outfit/job/wasteland/f13genghis/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/greatkhans/GK = GLOB.greatkhans
		GLOB.all_gangs |= GK
		GK.add_member(H)
		H.gang = GK

/datum/outfit/loadout/classic
	name = "Classic"
	l_hand = /obj/item/gun/ballistic/automatic/pistol/pistol127
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m127mm=2)

/datum/outfit/loadout/marksman
	name = "Marksman"
	l_hand =	/obj/item/gun/ballistic/automatic/marksman/sniper
	backpack_contents = list(
		/obj/item/ammo_box/magazine/w308=2)

/datum/job/wasteland/f13pusher
	title = "Great Khan"
	flag = F13PUSHER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	total_positions = 5
	spawn_positions = 5
	description = "You are no common raider or tribal settler, for you are a Great Khan. Your ancestry is that of fierce warriors and noble chieftans, whose rites and sagas tell of blood soaked battlefields and great sacrifice for your tribe. At least, this was once the case: after the massacre at Bitter Springs by the NCR, your people have lost much of their strength - now you and many other Khans travel west of Vegas through Red Rock Canyon in the hopes of settling in the region of Yuma."
	supervisors = "your gang leadership"
	selection_color = "#ff915e"
	exp_requirements = 1800
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13pusher

	access = list(ACCESS_KHAN)
	minimal_access = list(ACCESS_KHAN)

	loadout_options = list(
	///datum/outfit/loadout/pusher,
	/datum/outfit/loadout/enforcer,
	/datum/outfit/loadout/brawler)

/datum/outfit/job/wasteland/f13pusher
	name = "Great Khan"
	jobtype = /datum/job/wasteland/f13pusher
	id = 		/obj/item/card/id/khantattoo
	ears = 		/obj/item/radio/headset
	belt = 		/obj/item/claymore/machete
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel = 	/obj/item/storage/backpack/satchel/explorer
	uniform = /obj/item/clothing/under/f13/khan


/datum/outfit/job/wasteland/f13pusher/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/book/granter/trait/selection
	r_pocket = /obj/item/flashlight/flare
	l_pocket = /obj/item/storage/bag/money/small/khan
	backpack_contents = list(
		/obj/item/restraints/handcuffs=1, \
		/obj/item/reagent_containers/pill/patch/jet=2, \
		/obj/item/reagent_containers/pill/patch/medx=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1)
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket
	suit_store = pick(
		/obj/item/gun/ballistic/rifle/automatic/hunting/trail, \
		/obj/item/gun/ballistic/shotgun/hunting, \
		/obj/item/gun/ballistic/revolver/m29, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil)
	head = /obj/item/clothing/head/helmet/f13/khan
	shoes = /obj/item/clothing/shoes/f13/military/plated


/datum/outfit/job/wasteland/f13pusher/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/greatkhans/GK = GLOB.greatkhans
		GLOB.all_gangs |= GK
		GK.add_member(H)
		H.gang = GK
/*
/datum/outfit/loadout/pusher
	name = "Chemist"
	backpack_contents = list(
		/obj/item/reagent_containers/glass/beaker/large=2, \
		/obj/item/book/granter/trait/chemistry=1)
*/
/datum/outfit/loadout/enforcer
	name = "Enforcer"
	suit_store = /obj/item/gun/ballistic/shotgun/trench
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck=1, \
		/obj/item/ammo_box/shotgun/bean=1, \
		/obj/item/restraints/legcuffs/bola/tactical=1, \
		/obj/item/restraints/handcuffs=2)

/datum/outfit/loadout/brawler
	name = "Brawler"
	gloves =	/obj/item/melee/unarmed/brass/spiked
	backpack_contents = list(
		/obj/item/twohanded/baseball/spiked=1, \
		/obj/item/reagent_containers/pill/patch/healpoultice=2)
/*
Bandit
*/

/datum/job/wasteland/f13bandit
	title = "Bandit"
	flag = F13BANDIT
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	social_faction = "Raiders"
	total_positions = 15
	spawn_positions = 15
	description = "You are a low-level delinquent with a proclivity for malice, scrounging by for more caps, food and other necessities in the cruel wasteland.  You haven’t quite gained the reputation, contacts and skills to call yourself an Outlaw, so it would be in your best interest to follow their lead to create a superior force – there is a reason they made it so far, and they can help you move up the food chain. You are responsible for causing conflict and strife, you are a simple criminal who engages in nefarious shenanigans which make the wasteland more dangerous; however, you still have a responsibility to make your time here interesting, fun, and engaging for others - this means that whatever path you pursue should be more nuanced and flavorful than simple killing for the sake of it. You are expected to have a high level of roleplay, be OK with losing, and to not take things personally or you may lose the privilege to play this occupation. Treat this role as a first stepping stone to Antagonism, don’t be afraid to try things out, as long as you try to generate fun conflict while minding the rules you are doing everything right. Performing well as a Bandit is a great way to show you're capable of stepping up to the next level... And remember, losing is fun!"
	supervisors = "Your desire to make things interesting and fun"
	selection_color = "#ff4747"
	exp_requirements = 1800
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13bandit

	access = list()
	minimal_access = list()

	loadout_options = list(
	/datum/outfit/loadout/banfiend,
	/datum/outfit/loadout/bansadist,
	/datum/outfit/loadout/bansupafly,
	/datum/outfit/loadout/banblastmaster,
	/datum/outfit/loadout/banyankee
	)

/datum/outfit/job/wasteland/f13bandit
	name = "Bandit"
	jobtype = /datum/job/wasteland/f13bandit

	id = /obj/item/card/id/bandittattoo
	ears = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	r_hand = null

/datum/outfit/job/wasteland/f13bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca, \
		/obj/item/clothing/under/f13/mercc, \
		/obj/item/clothing/under/f13/cowboyb, \
		/obj/item/clothing/under/f13/cowboyg, \
		/obj/item/clothing/under/f13/raider_leather, \
		/obj/item/clothing/under/f13/raiderrags, \
		/obj/item/clothing/under/pants/f13/ghoul, \
		/obj/item/clothing/under/jabroni)
	r_pocket = /obj/item/flashlight/flare
	shoes = pick(
			/obj/item/clothing/shoes/jackboots,\
			/obj/item/clothing/shoes/f13/raidertreads)
	gloves = /obj/item/clothing/gloves/f13/handwraps
	backpack_contents = list(
		/obj/item/claymore/machete/pipe=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=1, \
		/obj/item/storage/bag/money/small/raider=1, \
		/obj/item/ammo_box/magazine/m9mm = 2
		)
	belt = pick(/obj/item/gun/ballistic/automatic/pistol/ninemil)

/datum/outfit/job/wasteland/f13bandit/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	H.social_faction = "Raiders"
	H.verbs |= /mob/living/proc/creategang

/datum/outfit/loadout/banfiend
	name = "Fiend"
	head = /obj/item/clothing/head/helmet/f13/fiend
	suit = /obj/item/clothing/suit/armor/f13/raider/badlands

/datum/outfit/loadout/bansadist
	name = "Sadist"
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	suit = /obj/item/clothing/suit/armor/f13/raider/sadist

/datum/outfit/loadout/bansupafly
	name = "Supafly"
	head = /obj/item/clothing/head/helmet/f13/raider/supafly
	suit = /obj/item/clothing/suit/armor/f13/raider/supafly

/datum/outfit/loadout/banblastmaster
	name = "Blastmaster"
	head = /obj/item/clothing/head/helmet/f13/raider/blastmaster
	suit = /obj/item/clothing/suit/armor/f13/raider/blastmaster

/datum/outfit/loadout/banyankee
	name = "Yankee"
	head = /obj/item/clothing/head/helmet/f13/raider/yankee
	suit = /obj/item/clothing/suit/armor/f13/raider/yankee

/*
Outlaw
*/

/datum/job/wasteland/f13raider
	title = "Outlaw"
	flag = F13RAIDER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = "Wastelander"
	social_faction = "Raiders"
	total_positions = 15
	spawn_positions = 15
	description = "You are an undesirable figure of some kind- perhaps a corrupt official, or a cannibalistic bartender, or a devious conman, to name a few examples. You have more freedom than anyone else in the wastes, and are not bound by the same moral code as others, but though you may only be interested in self-gain, you still have a responsibility to make your time here interesting, fun, and engaging for others- this means that whatever path you pursue should be more nuanced and flavorful than simple highway robbery or slavery. (Adminhelp if you require help setting up your character for the round.)"
	supervisors = "Your desire to make things interesting and fun"
	selection_color = "#ff4747"

	outfit = /datum/outfit/job/wasteland/f13raider

	access = list()
	minimal_access = list()
	loadout_options = list(
	/datum/outfit/loadout/mercenary,
	/datum/outfit/loadout/raider_boss,
	/datum/outfit/loadout/conartist,
	/datum/outfit/loadout/quack_doctor,
	/datum/outfit/loadout/fiend,
	/datum/outfit/loadout/highway,
	/datum/outfit/loadout/desperado,
	/datum/outfit/loadout/jabroni,
	/datum/outfit/loadout/ronin,
	/datum/outfit/loadout/knight,
	/datum/outfit/loadout/raider_bos,
	/datum/outfit/loadout/raider_ncr,
	/datum/outfit/loadout/raider_legion,
	/datum/outfit/loadout/raider_vault
	)

/datum/outfit/job/wasteland/f13raider
	name = "Outlaw"
	jobtype = /datum/job/wasteland/f13raider

	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	r_hand = /obj/item/book/granter/trait/selection

/datum/outfit/job/wasteland/f13raider/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca, \
		/obj/item/clothing/under/f13/mercc, \
		/obj/item/clothing/under/f13/cowboyb, \
		/obj/item/clothing/under/f13/cowboyg, \
		/obj/item/clothing/under/f13/raider_leather, \
		/obj/item/clothing/under/f13/raiderrags, \
		/obj/item/clothing/under/pants/f13/ghoul, \
		/obj/item/clothing/under/jabroni)
	suit = pick(
		/obj/item/clothing/suit/armor/f13/raider/supafly,\
		/obj/item/clothing/suit/armor/f13/raider/yankee, \
		/obj/item/clothing/suit/armor/f13/raider/sadist, \
		/obj/item/clothing/suit/armor/f13/raider/blastmaster, \
		/obj/item/clothing/suit/armor/f13/raider/badlands, \
		/obj/item/clothing/suit/armor/f13/raider/painspike)
	if(prob(10))
		mask = pick(
			/obj/item/clothing/mask/bandana/red,\
			/obj/item/clothing/mask/bandana/blue,\
			/obj/item/clothing/mask/bandana/green,\
			/obj/item/clothing/mask/bandana/gold,\
			/obj/item/clothing/mask/bandana/black,\
			/obj/item/clothing/mask/bandana/skull)
	head = pick(
		/obj/item/clothing/head/sombrero,\
		/obj/item/clothing/head/helmet/f13/raider/supafly,\
		/obj/item/clothing/head/helmet/f13/raider/eyebot,\
		/obj/item/clothing/head/helmet/f13/raider/arclight,\
		/obj/item/clothing/head/helmet/f13/raider/blastmaster,\
		/obj/item/clothing/head/helmet/f13/raider/yankee,\
		/obj/item/clothing/head/helmet/f13/raider/psychotic,\
		/obj/item/clothing/head/helmet/f13/fiend)
	r_pocket = /obj/item/flashlight/flare
	shoes = pick(
			/obj/item/clothing/shoes/jackboots,\
			/obj/item/clothing/shoes/f13/raidertreads)
	gloves = /obj/item/clothing/gloves/f13/handwraps
	backpack_contents = list(
		/obj/item/restraints/handcuffs=2, \
		/obj/item/claymore/machete/pipe=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/reagent_containers/pill/patch/healingpowder=2, \
		/obj/item/storage/bag/money/small/raider=1)

	suit_store = pick(
		/obj/item/gun/ballistic/revolver/detective, \
		/obj/item/gun/ballistic/rifle/remington, \
		/obj/item/gun/ballistic/revolver/zipgun, \
		/obj/item/gun/ballistic/revolver/pipe_rifle, \
		/obj/item/gun/ballistic/revolver/caravan_shotgun, \
		/obj/item/gun/ballistic/revolver/single_shotgun)

/datum/outfit/job/wasteland/f13raider/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	H.social_faction = "Raiders"
	H.verbs |= /mob/living/proc/creategang

/datum/outfit/loadout/mercenary
	name = "Mercenary"
	suit = /obj/item/clothing/suit/armor/f13/combat/swat
	l_hand = /obj/item/gun/ballistic/automatic/mini_uzi
	backpack_contents = list(
		/obj/item/ammo_box/magazine/uzim9mm=3,
		/obj/item/kitchen/knife/trench=1,
		/obj/item/grenade/plastic=1
		)

/datum/outfit/loadout/raider_boss
	name = "Raider Boss"
	suit = /obj/item/clothing/suit/armor/f13/power_armor/raiderpa
	head = /obj/item/clothing/head/helmet/f13/power_armor/raiderpa_helm
	l_hand = /obj/item/gun/ballistic/revolver/thatgun
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1,
		/obj/item/ammo_box/magazine/m556/rifle/assault=2
		)

/datum/outfit/loadout/conartist
	name = "Con Artist"
	suit = /obj/item/clothing/under/f13/bennys
	l_hand = /obj/item/gun/ballistic/automatic/pistol/mk23
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m45exp=3,
		/obj/item/switchblade=1,
		/obj/item/card/id/syndicate=1,
		/obj/item/stack/f13Cash/caps/twofivezero=1,
		/obj/item/stack/tile/carpet/black/fifty=1,
		/obj/item/storage/box/dice=1,
		/obj/item/storage/fancy/cigarettes/cigars=1,
		/obj/item/toy/cards/deck=1,
		/obj/item/lighter=1
		)

/datum/outfit/loadout/quack_doctor
	name = "Quack Doctor"
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	l_hand 		= /obj/item/storage/backpack/duffelbag/med/surgery
	suit_store = /obj/item/gun/energy/laser/wattz
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/ec=3,
		/obj/item/switchblade=1,
		/obj/item/book/granter/trait/midsurgery=1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 4,
		/obj/item/reagent_containers/medspray/synthflesh = 2
		)

/datum/outfit/loadout/fiend
	name = "Fiend"
	suit = /obj/item/clothing/suit/armor/f13/raider/badlands
	head = /obj/item/clothing/head/helmet/f13/fiend
	l_hand = /obj/item/gun/ballistic/rifle/automatic/hunting/cowboy
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola/tactical=1,
		/obj/item/claymore/machete/pipe/pan = 1,
		/obj/item/ammo_box/tube/a357=3,
		/obj/item/reagent_containers/pill/patch/jet=1,
		/obj/item/reagent_containers/hypospray/medipen/psycho=1,
		/obj/item/reagent_containers/pill/patch/turbo=1,
		/obj/item/reagent_containers/pill/buffout=1
		)

/datum/outfit/loadout/highway
	name = "Highwayman"
	suit = /obj/item/clothing/suit/armor/f13/raider/painspike
	head = /obj/item/clothing/head/helmet/f13/raider/psychotic
	l_hand = /obj/item/gun/ballistic/shotgun/lever
	backpack_contents = list(
		/obj/item/clothing/mask/gas=1,
		/obj/item/twohanded/spear=1,
		/obj/item/ammo_box/shotgun/buck=1,
		/obj/item/ammo_box/shotgun/slug=1
		)

/datum/outfit/loadout/desperado
	name = "Desperado"
	suit = /obj/item/clothing/suit/armor/f13/raider/desperado
	mask = /obj/item/clothing/mask/bandana/skull
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/revolver44=2,
		/obj/item/ammo_box/m44=4,
		/obj/item/kitchen/knife/bowie=1
		)

/datum/outfit/loadout/jabroni
	name = "Jabroni"
	suit = /obj/item/clothing/suit/armor/f13/raider/leather_jacket
	head = /obj/item/clothing/head/helmet/skull
	shoes = /obj/item/clothing/shoes/jackboots
	uniform = /obj/item/clothing/under/jabroni
	l_hand = /obj/item/gun/ballistic/automatic/greasegun
	backpack_contents = list(
		/obj/item/ammo_box/magazine/greasegun=3,
		/obj/item/megaphone=1,
		/obj/item/grenade/iedcasing=2,
		/obj/item/kitchen/knife/combat/survival=1
		)

/datum/outfit/loadout/ronin
	name = "Junkyard Ronin"
	suit = /obj/item/clothing/suit/armor/f13/raider/raider_duster
	l_hand = /obj/item/katana
	backpack_contents = list(
		/obj/item/throwing_star=3,
		/obj/item/grenade/smokebomb=1
		)

/datum/outfit/loadout/knight
	name = "Junkyard Knight"
	suit = /obj/item/clothing/suit/armor/f13/raider/templar
	head = /obj/item/clothing/head/helmet/f13/raider/templar
	l_hand = /obj/item/claymore/machete/spatha/knight
	backpack_contents = list(
		/obj/item/shield/makeshift=1,
		/obj/item/megaphone=1,
		/obj/item/reagent_containers/pill/patch/healingpowder=3
	)

/datum/outfit/loadout/raider_bos
	name = "Brotherhood Exile"
	suit = /obj/item/clothing/suit/armor/f13/exile/bosexile
	uniform = /obj/item/clothing/under/f13/bos/fatigues
	l_hand = /obj/item/gun/energy/laser/aer9
	id = /obj/item/card/id/rusted/brokenholodog
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/mfc=3,
		/obj/item/kitchen/knife/combat=1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak/super=1
		)

/datum/outfit/loadout/raider_ncr
	name = "NCR Deserter"
	suit = /obj/item/clothing/suit/armor/f13/exile/ncrexile
	uniform = /obj/item/clothing/under/f13/exile
	l_hand = /obj/item/gun/ballistic/automatic/service
	id = /obj/item/card/id/rusted
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle/assault=1,
		/obj/item/ammo_box/magazine/m556/rifle=2,
		/obj/item/kitchen/knife/bowie=1
		)

/datum/outfit/loadout/raider_legion
	name = "Disgraced Legionnaire"
	suit = /obj/item/clothing/suit/armor/f13/exile/legexile
	uniform = /obj/item/clothing/under/f13/exile/legion
	belt = /obj/item/storage/backpack/spearquiver
	l_hand = /obj/item/claymore/machete/spatha
	id = /obj/item/card/id/rusted/rustedmedallion
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=2,
		/obj/item/reagent_containers/pill/patch/healingpowder=3)

/datum/outfit/loadout/raider_vault
	name = "Dishelved Vaultie"
	suit = /obj/item/clothing/suit/armor/vest
	uniform = /obj/item/clothing/under/f13/exile/vault
	l_hand = /obj/item/gun/ballistic/automatic/pistol/n99
	id = /obj/item/card/id/rusted/fadedvaultid
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m10mm_adv/simple=4,
		/obj/item/switchblade=1,
		/obj/item/assembly/flash/handheld=1,
		/obj/item/melee/classic_baton/telescopic=1
		)

/datum/job/wasteland/f13wastelander
	title = "Wastelander"
	flag = F13WASTELANDER
	faction = "Wastelander"
	total_positions = -1
	spawn_positions = -1
	description = "You travelled far to arrive at the ruined town of Pahrump, a bleak paradise far from the troubles of the Mojave Conflict - protected by Red Rock Canyon to the east, free of the many factions vying for control over Nevada. Here in Pahrump, your story and fate is your own."
	supervisors = "no one"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13wastelander

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	loadout_options = list(
	/datum/outfit/loadout/vault_refugee,
	/datum/outfit/loadout/salvager,
	/datum/outfit/loadout/medic,
	/datum/outfit/loadout/merchant,
	/datum/outfit/loadout/scavenger,
	/datum/outfit/loadout/citizen,
	/datum/outfit/loadout/slave)

/datum/outfit/job/wasteland/f13wastelander
	name = "Wastelander"
	jobtype = /datum/job/wasteland/f13wastelander

	id = null
	ears = null
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/job/wasteland/f13wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/book/granter/trait/selection
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/machinist, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)
	suit = pick(
		/obj/item/clothing/suit/armor/f13/kit, \
		/obj/item/clothing/suit/f13/veteran, \
		/obj/item/clothing/suit/toggle/labcoat/f13/wanderer, \
		/obj/item/clothing/suit/armor/f13/leatherarmor)
	l_pocket = 	/obj/item/reagent_containers/food/drinks/flask
	r_pocket = /obj/item/flashlight/flare
	belt = 	/obj/item/kitchen/knife/combat/survival
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/reagent_containers/pill/radx=1, \
		/obj/item/storage/bag/money/small/wastelander, \
		/obj/item/kitchen/knife)
	suit_store = pick(
	/obj/item/gun/ballistic/revolver/detective, \
	/obj/item/gun/ballistic/rifle/remington, \
	/obj/item/gun/ballistic/revolver/zipgun, \
	/obj/item/gun/ballistic/revolver/pipe_rifle)

/datum/outfit/loadout/salvager
	name = "Salvager"
	suit = /obj/item/clothing/suit/apron
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	head = /obj/item/clothing/head/welding
	r_hand = /obj/item/weldingtool/largetank
	backpack_contents = list(/obj/item/gun/ballistic/automatic/pistol/m1911/compact=1)

/datum/outfit/loadout/scavenger
	name = "Scavenger"
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/storage/backpack/duffelbag/scavengers
	l_hand = /obj/item/pickaxe/drill
	belt = /obj/item/storage/belt/utility
	backpack_contents = list(/obj/item/mining_scanner=1,
							/obj/item/metaldetector=1,
							/obj/item/shovel=1,
							/obj/item/gun/ballistic/automatic/pistol/m1911/compact=1)

/datum/outfit/loadout/medic
	name = "Wasteland Doctor"
	uniform = /obj/item/clothing/under/f13/follower
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/color/latex
	neck = /obj/item/bedsheet/medical
	backpack_contents =  list(/obj/item/reagent_containers/medspray/synthflesh=2,
							/obj/item/stack/medical/suture/emergency/fifteen=1,
							/obj/item/stack/medical/ointment/twelve=1,
							/obj/item/smelling_salts/crafted=1,
							/obj/item/healthanalyzer=1,
							/obj/item/stack/sheet/mineral/silver=1,
							/obj/item/gun/ballistic/automatic/pistol/m1911/compact=1,
							/obj/item/lighter=1,
							/obj/item/screwdriver=1,
							/obj/item/wirecutters=1,
							/obj/item/hatchet=1
		)

/datum/outfit/loadout/merchant
	name = "Roving Trader"
	uniform = /obj/item/clothing/under/f13/merchant
	suit = /obj/item/clothing/neck/cloak
	shoes = /obj/item/clothing/shoes/f13/brownie
	head = /obj/item/clothing/head/f13/stormchaser
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/f13/biker
	l_hand = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents =  list(/obj/item/storage/box/vendingmachine=1,
							/obj/item/stack/f13Cash/caps/threefivezero=1,
							/obj/item/gun/ballistic/automatic/pistol/m1911/compact=1)

//end new

/datum/outfit/loadout/vault_refugee
	name = "Vaultie"
	uniform = /obj/item/clothing/under/f13/vault
	gloves = /obj/item/pda
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/n99=1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple=2)

/datum/outfit/loadout/citizen
	name = "Legion Citizen"
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/f13/fancy
	suit = /obj/item/clothing/suit/curator
	head = /obj/item/clothing/head/scarecrow_hat
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/welding
	l_hand = /obj/item/shield/legion/buckler
	backpack_contents = list(
		/obj/item/claymore/machete/spatha=1)

/datum/outfit/loadout/slave
	name = "NCR Citizen"
	uniform = /obj/item/clothing/under/f13/caravaneer
	shoes = /obj/item/clothing/shoes/f13/tan
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/orange
	l_hand = /obj/item/gun/ballistic/automatic/varmint
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=2)

