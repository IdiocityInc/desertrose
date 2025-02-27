/obj/item/reagent_containers/pill/patch
	name = "chemical patch"
	desc = "A chemical patch for touch based applications."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bandaid"
	item_state = "bandaid"
	possible_transfer_amounts = list()
	volume = 40
	apply_type = PATCH
	apply_method = "apply"
	self_delay = 30		// three seconds
	dissolvable = FALSE

/obj/item/reagent_containers/pill/patch/attack(mob/living/L, mob/user)
	if(ishuman(L))
		var/obj/item/bodypart/affecting = L.get_bodypart(check_zone(user.zone_selected))
		if(!affecting)
			to_chat(user, "<span class='warning'>The limb is missing!</span>")
			return
		//if(!L.can_inject(user, TRUE, user.zone_selected, FALSE, TRUE)) //stopped by clothing, not by species immunity.
		//	return
		if(affecting.status != BODYPART_ORGANIC)
			to_chat(user, "<span class='notice'>Medicine won't work on a robotic limb!</span>")
			return
	..()

/obj/item/reagent_containers/pill/patch/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/reagent_containers/pill/patch/styptic
	name = "brute patch"
	desc = "Helps with brute injuries."
	list_reagents = list(/datum/reagent/medicine/styptic_powder = 20)
	icon_state = "bandaid_brute"

/obj/item/reagent_containers/pill/patch/silver_sulf
	name = "burn patch"
	desc = "Helps with burn injuries."
	list_reagents = list(/datum/reagent/medicine/silver_sulfadiazine = 20)
	icon_state = "bandaid_burn"

/obj/item/reagent_containers/pill/patch/get_belt_overlay()
	return mutable_appearance('icons/obj/clothing/belt_overlays.dmi', "pouch")

/obj/item/reagent_containers/pill/patch/jet
	name = "Jet"
	desc = "A highly addictive meta-amphetamine that produces a fast-acting, intense euphoric high on the user."
	list_reagents = list(/datum/reagent/drug/jet = 10)
	icon_state = "bandaid_jet"

/obj/item/reagent_containers/pill/patch/turbo
	name = "Turbo"
	desc = "A chem that vastly increases the user's reflexes and slows their perception of time."
	list_reagents = list(/datum/reagent/drug/turbo = 5)
	icon_state = "bandaid_turbo"

/obj/item/reagent_containers/pill/patch/healingpowder
	name = "healing powder"
	desc = "A powder used to heal physical wounds derived from ground broc flowers and xander roots, commonly used by tribals."
	list_reagents = list(/datum/reagent/medicine/healing_powder = 10)
	icon_state = "bandaid_healingpowder"
	self_delay = 0

/obj/item/reagent_containers/pill/patch/healpoultice
	name = "healing poultice"
	desc = "A concoction of broc flower, cave fungus, agave fruit and xander root."
	list_reagents = list(/datum/reagent/medicine/healing_powder/poultice = 10)
	icon_state = "bandaid_healingpoultice"
	self_delay = 0

/obj/item/reagent_containers/pill/patch/poultice_zombie
	name = "'Vita' poultice"
	desc = "A well refined powder, mostly in use by Caesar's Legion for its side effects which it causes in first time users."
	list_reagents = list(/datum/reagent/medicine/healing_powder/poultice_zombie = 10)
	icon_state = "bandaid_healingpoulticezombie"
	self_delay = 40

/obj/item/reagent_containers/pill/patch/bitterdrink
	name = "bitter drink"
	desc = "A disgusting drink favored by legion during their long marches. It leaves disgusting aftertaste."
	list_reagents = list(/datum/reagent/medicine/bitter_drink = 10)
	icon_state = "bitter"
	self_delay = 0

/obj/item/reagent_containers/pill/patch/healingpowder/custom
	name = "Healing Powder"
	desc = "A powder used to heal physical wounds derived from ground broc flowers and xander roots, commonly used by tribals."
	list_reagents = null
	icon_state = "bandaid_healingpowder"
	self_delay = 0

/obj/item/reagent_containers/pill/patch/medx
	name = "syringe (med-x)"
	desc = "Contains Med-X, a powerful analgesic drug that increases the user's damage resistance. Highly addictive, and prolonged presence in the body comes with severe side effects."
	list_reagents = list(/datum/reagent/medicine/medx = 10)
	icon = 'icons/obj/syringe.dmi'
	icon_state = "med-x"
	item_state = "med-x"

/obj/item/reagent_containers/pill/patch/hydra
	name = "hydra"
	desc = "A large bottle containing a blend of incredients; an incredible stimulant."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "hydra"
	self_delay = 10
	list_reagents = list(/datum/reagent/medicine/hydra = 10)