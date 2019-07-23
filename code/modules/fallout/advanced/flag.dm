obj/flag
	icon = 'icons/fallout/advanced/flags.dmi'
	icon_state = "city"
	pixel_x = 10
	anchored = 1
	layer = 10

	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF

obj/flagpole
	name = "Flagpole"
	icon = 'icons/fallout/advanced/flagpole_2.dmi'
	icon_state = "flag_stock"
	anchored = 1
	density = 1
	layer = 11

	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF

	var/flag_location = "dummy"
	var/flag_faction = "none"
	var/flag_tickets = 100
	var/flag_nextFire = 0
	var/obj/flag


obj/flagpole/New()
	..()
	flag = new /obj/flag(loc)
	flag.icon_state = flag_faction
	SSflag.processing += src

obj/flagpole/proc/onCaptured(var/faction)

	flag_faction = faction
	flag.icon_state = faction

	var/datum/f13_faction/faction_datum = get_faction_datum(faction)
	var/faction_name = faction_datum.name
	to_chat(world, "<font size='4' color='red'>[flag_location] was captured by the [faction_name]!</font>")

obj/flagpole/proc/onLoosing()
	to_chat(world, "<font size='3' color='blue'>Panicked radio traffic indicates that someone is attempting to capture [flag_location]!</font>")

obj/flagpole/proc/onUpdate()
	flag.pixel_y = 10 + flag_tickets
