/obj/machinery/door/poddoor
	name = "blast door"
	desc = "A heavy duty blast door that opens mechanically."
	icon = 'icons/obj/doors/blastdoor.dmi'
	icon_state = "closed"
	var/id = 1
	sub_door = 1
	explosion_block = 3
	heat_proof = 1
	safe = 0
	obj_integrity = 600
	max_integrity = 600
	armor = list(melee = 50, bullet = 100, laser = 100, energy = 100, bomb = 50, bio = 100, rad = 100, fire = 100, acid = 70)
	resistance_flags = FIRE_PROOF
	damage_deflection = 70

/obj/machinery/door/poddoor/preopen
	icon_state = "open"
	density = 0
	opacity = 0

/obj/machinery/door/poddoor/ert
	desc = "A heavy duty blast door that only opens for dire emergencies."

//special poddoors that open when emergency shuttle docks at centcom
/obj/machinery/door/poddoor/shuttledock
	var/checkdir = 4	//door won't open if turf in this dir is `turftype`
	var/turftype = /turf/open/space

/obj/machinery/door/poddoor/shuttledock/proc/check()
	var/turf/T = get_step(src, checkdir)
	if(!istype(T, turftype))
		addtimer(CALLBACK(src, .proc/open), 0, TIMER_UNIQUE)
	else
		addtimer(CALLBACK(src, .proc/close), 0, TIMER_UNIQUE)

/obj/machinery/door/poddoor/Bumped(atom/AM)
	if(density)
		return 0
	else
		return ..()

//"BLAST" doors are obviously stronger than regular doors when it comes to BLASTS.
/obj/machinery/door/poddoor/ex_act(severity, target)
	if(severity == 3)
		return
	..()

/obj/machinery/door/poddoor/do_animate(animation)
	switch(animation)
		if("opening")
			flick("opening", src)
		if("closing")
			flick("closing", src)

/obj/machinery/door/poddoor/update_icon()
	if(density)
		icon_state = "closed"
	else
		icon_state = "open"

/obj/machinery/door/poddoor/try_to_activate_door(mob/user)
 	return

/obj/machinery/door/poddoor/try_to_crowbar(obj/item/I, mob/user)
	if(stat & NOPOWER)
		open(1)






/obj/machinery/door/poddoor/gate
	name = "city gate"
	desc = "A heavy duty gates that opens mechanically."
	icon = 'icons/fallout/objects/structures/city_gate.dmi'
	icon_state = "closed"
	id = 333
	bound_width = 96
	var/list/opacity_objects = list() //FUCK BYOND

/obj/machinery/door/poddoor/gate/New()
	..()
	var/atom/movable/S = new (locate(x+1,y,z))
	S.set_opacity(opacity)
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()
	opacity_objects += S
	S = new (locate(x+2,y,z))
	S.set_opacity(opacity)
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()
	opacity_objects += S

/obj/machinery/door/poddoor/gate/Destroy()
	for(var/atom/movable/S in opacity_objects)
		qdel(S)
	..()

/obj/machinery/door/poddoor/gate/open()
	for(var/atom/movable/S in opacity_objects)
		S.set_opacity(0)
	..()

/obj/machinery/door/poddoor/gate/close()
	..()
	for(var/atom/movable/S in opacity_objects)
		S.set_opacity(1)






/obj/machinery/door/poddoor/gatesideways
	name = "city gate"
	desc = "A heavy duty gates that opens mechanically."
	icon = 'icons/fallout/objects/structures/city_gatesideways.dmi'
	icon_state = "closed"
	id = 334
	bound_width = 32
	bound_height = 96
	var/list/opacity_objects = list() //FUCK BYOND

/obj/machinery/door/poddoor/gatesideways/New()
	..()
	var/atom/movable/S = new (locate(x,y+1,z))
	S.set_opacity(opacity)
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()
	opacity_objects += S
	S = new (locate(x,y+2,z))
	S.set_opacity(opacity)
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()
	opacity_objects += S

/obj/machinery/door/poddoor/gatesideways/Destroy()
	for(var/atom/movable/S in opacity_objects)
		qdel(S)
	..()

/obj/machinery/door/poddoor/gatesideways/open()
	for(var/atom/movable/S in opacity_objects)
		S.set_opacity(0)
	..()

/obj/machinery/door/poddoor/gatesideways/close()
	..()
	for(var/atom/movable/S in opacity_objects)
		S.set_opacity(1)
