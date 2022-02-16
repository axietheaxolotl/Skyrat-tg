//////////////////////
//----- SUITS ------//
//////////////////////

/obj/item/clothing/suit/toggle/labcoat/security_medic
	name = "security medic's jacket"
	icon_state = "secmed_labcoat"
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	mutant_variants = NONE
	armor = list(MELEE = 35, BULLET = 30, LASER = 30, ENERGY = 40, BOMB = 25, BIO = 0, FIRE = 50, ACID = 50, WOUND = 10)
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/baton/telescopic, /obj/item/soap, /obj/item/tank/internals/emergency_oxygen, /obj/item/gun, /obj/item/storage/firstaid)

/obj/item/clothing/suit/armor/vest/peacekeeper/security_medic
	name = "security medic's armour vest"
	desc = "A bright-white armour vest, adorned with red stripes bearing the words \"MEDIC\". The Hippocratic Oath was stupid, anyways."
	icon_state = "secmed_armor"
	worn_icon_state = "secmed_armor"
	mutant_variants = NONE
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/reagent_containers/glass/bottle, /obj/item/reagent_containers/glass/beaker, /obj/item/reagent_containers/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/baton/telescopic, /obj/item/soap, /obj/item/tank/internals/emergency_oxygen, /obj/item/gun, /obj/item/storage/firstaid)

//////////////////////
//----- UNDER ------//
//////////////////////

/obj/item/clothing/under/rank/security/peacekeeper/security_medic
	name = "security medics's uniform"
	desc = "A lightly armored uniform worn by Nanotrasen's Asset Protection Medical Corps."
	icon_state = "security_medic_jumpsuit"

/obj/item/clothing/under/rank/security/peacekeeper/security_medic/scrubs
	name = "security medics's scrubs"
	desc = "A baggy, sterile uniform, worn by your local security medic."
	icon_state = "security_medic_scrubs"
	can_adjust = FALSE

/////////////////////
//----- HEAD ------//
/////////////////////

/obj/item/clothing/head/beret/sec/peacekeeper/security_medic
	name = "security medic's beret"
	desc = "A robust beret with the medical insignia emblazoned on it. Uses reinforced fabric to offer sufficient protection."
	greyscale_colors = "#3F3C40#870E12"
	icon_state = "beret_badge_med"
	mutant_variants = NONE

/obj/item/clothing/head/helmet/sec/peacekeeper/security_medic
	name = "security medic's helmet"
	desc = "A standard issue combat helmet for security medics. Has decent tensile strength and armor. Keep your head down."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	worn_icon_state = "secmed_helmet"
	icon_state = "secmed_helmet"
	mutant_variants = NONE

///////////////////////
//----- GLOVES ------//
///////////////////////

/obj/item/clothing/gloves/color/latex/nitrile/sec
	name = "medic's gloves"
	desc = "Uniquely made nitrile gloves by Armadyne. Black nitrile with a red-trim allows for more durability, \
			and implanted nano-chips allow very fast carrying of patients along with the faster use time of various chemical related items."
	icon_state = "gloves_medic"
	inhand_icon_state = "gloves_medic"
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT

//////////////////////
//----- BELTS ------//
//////////////////////

/obj/item/storage/belt/security/medic
	name = "medic's tactical webbing"
	desc = "Can hold security gear like handcuffs and flashes, whilst also holding medical gear."
	icon_state = "belt_medic"
	worn_icon_state = "belt_medic"
	component_type = /datum/component/storage/concrete/security

/obj/item/storage/belt/security/medic/ComponentInitialize() // Just a combination of what the medical and security belt could hold, with some cutting down
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 5
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.set_holdable(list(
		/obj/item/melee/baton,
		/obj/item/grenade,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/restraints/handcuffs,
		/obj/item/assembly/flash/handheld,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing/shotgun,
		/obj/item/ammo_box,
		/obj/item/food/donut,
		/obj/item/knife/combat,
		/obj/item/flashlight/seclite,
		/obj/item/melee/baton/telescopic,
		/obj/item/radio,
		/obj/item/clothing/gloves,
		/obj/item/restraints/legcuffs/bola,
		/obj/item/holosign_creator/security,
		/obj/item/stock_parts/cell/microfusion, //SKYRAT EDIT ADDITION
		/obj/item/gun, //SKYRAT EDIT ADDITION
		/obj/item/healthanalyzer,
		/obj/item/dnainjector,
		/obj/item/reagent_containers,
		/obj/item/lighter,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/flashlight/pen,
		/obj/item/extinguisher/mini,
		/obj/item/reagent_containers/hypospray,
		/obj/item/sensor_device,
		/obj/item/radio,
		/obj/item/lazarus_injector,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/mask/breath,
		/obj/item/clothing/mask/breath/medical,
		/obj/item/surgical_drapes, //for true paramedics
		/obj/item/clothing/suit/toggle/labcoat/hospitalgown,	//SKYRAT EDIT ADDITION - adds surgery gowns to belts
		/obj/item/weaponcell/medical, //SKYRAT EDIT MEDIGUNS
		/obj/item/reagent_containers/glass/vial, //SKYRAT EDIT HYPOSPRAYS
		/obj/item/hypospray/mkii, //SKYRAT EDIT HYPOSPRAYS
		/obj/item/blood_filter,
		/obj/item/clothing/neck/stethoscope,
		/obj/item/stamp,
		/obj/item/clothing/glasses,
		/obj/item/wrench/medical,
		/obj/item/clothing/mask/muzzle,
		/obj/item/reagent_containers/blood,
		/obj/item/tank/internals/emergency_oxygen,
		/obj/item/pinpointer/crew,
		/obj/item/holosign_creator/medical,
		/obj/item/construction/plumbing,
		/obj/item/plunger,
		/obj/item/reagent_containers/spray,
		/obj/item/shears,
		/obj/item/stack/sticky_tape //surgical tape
		))

/obj/item/storage/belt/security/medic/full/PopulateContents()
	new /obj/item/reagent_containers/spray/pepper(src)
	new /obj/item/restraints/handcuffs(src)
	new /obj/item/grenade/flashbang(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/melee/baton/security/loaded(src)
	update_appearance()
