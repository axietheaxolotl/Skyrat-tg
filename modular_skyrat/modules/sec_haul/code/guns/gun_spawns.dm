/obj/effect/spawner/armory_spawn
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/spawner.dmi'
	icon_state = "random_gun"
	layer = OBJ_LAYER
	/// How many guns will be spawned here.
	var/gun_count = 1
	/// If the same gun can be spawned twice.
	var/gun_doubles = TRUE
	/// A list of possible guns to spawn.
	var/list/guns
	/// Do we fan out the items spawned for a natural effect?
	var/fan_out_items = TRUE
	/// How many mags per gun do we spawn, if it takes magazines.
	var/mags_to_spawn = 3
	/// Do we want to angle it so that it is horizontal?
	var/vertial_guns = TRUE

/obj/structure/rack/shelf

/obj/effect/spawner/armory_spawn/Initialize(mapload)
	..()
	if(guns?.len)
		var/guns_spawned = 0
		while((gun_count - guns_spawned) && guns.len)
			var/gunspawn = pickweight(guns)
			while(islist(gunspawn))
				gunspawn = pickweight(gunspawn)
			if(!gun_doubles)
				guns.Remove(gunspawn)

			if(gunspawn)
				var/obj/item/gun/spawned_gun = new gunspawn(loc)

				if(vertial_guns)
					spawned_gun.place_on_rack()
					spawned_gun.pixel_x = clamp((-13 + (3 * guns_spawned)), -10, 10)

				if(istype(spawned_gun, /obj/item/gun/ballistic))
					var/obj/item/gun/ballistic/spawned_ballistic_gun = spawned_gun
					if(spawned_ballistic_gun.magazine && !istype(spawned_ballistic_gun.magazine, /obj/item/ammo_box/magazine/internal))
						for(var/i in 1 to mags_to_spawn)
							new spawned_ballistic_gun.mag_type (loc)

			guns_spawned++
	return INITIALIZE_HINT_QDEL

//////////////RIFLE SPAWNER
/obj/effect/spawner/armory_spawn/rifles
	icon_state = "random_rifle"
	guns = list(
		/obj/item/gun/ballistic/automatic/pcr,
		/obj/item/gun/ballistic/automatic/pitbull,
		/obj/item/gun/ballistic/automatic/ostwind,
		/obj/item/gun/ballistic/automatic/norwind,
		/obj/item/gun/ballistic/automatic/vintorez,
	)

/obj/effect/spawner/armory_spawn/pistols
	icon_state = "random_pistol"
	guns = list(
		/obj/item/gun/ballistic/automatic/pistol/g17,
		/obj/item/gun/ballistic/automatic/pistol/pdh/peacekeeper,
		/obj/item/gun/ballistic/automatic/pistol/ladon,
		/obj/item/gun/ballistic/automatic/pistol/mk58,
	)

/obj/effect/spawner/armory_spawn/shotguns
	icon_state = "random_shotgun"
	guns = list(
		/obj/item/gun/ballistic/shotgun/riot,
		/obj/item/gun/ballistic/shotgun/m23,
		/obj/item/gun/ballistic/shotgun/automatic/as2,
		/obj/item/gun/ballistic/shotgun/sas14,
	)

/obj/structure/closet/ammunitionlocker/useful/PopulateContents()
	..()
	new /obj/item/storage/box/rubbershot_14gauge(src)
	new /obj/item/storage/box/rubbershot_14gauge(src)
	new /obj/item/storage/box/lethalshot_14gauge(src)
	new /obj/item/storage/box/lethalshot_14gauge(src)
