//LADDER DRAGGING OF PLAYERS HAS BEEN SETUP
//IT CURRENTLY ONLY FUNCTIONS ON LADDERS WHICH CAN ONLY GO UP OR ONLY GO DOWN. 
//ALL EXISTING LADDERS HAVE BEEN ADJUSTED FOR THIS.
//PLEASE MAKE SURE ANY LADDERS PLACED ARE NOT ABLE TO CONNECT TO MORE THAN 1 LADDER. 
//LADDER_MIDDLE IS NOW AN ERROR SPECIFICALLY SO YOU SPOT THIS AND REMEMBER TO FIX IT.
//SEE ENCLAVE SUBLEVELS BASE IN z2.dmm FOR EXAMPLE



/obj/structure/ladder
	name = "ladder"
	desc = "A sturdy metal ladder."
	icon = 'icons/fallout/objects/structures/stationary.dmi'
	icon_state = "ladder_top"
	anchored = 1
	resistance_flags = INDESTRUCTIBLE
	var/id = null
	var/height = 0							//the 'height' of the ladder. higher numbers are considered physically higher
	var/obj/structure/ladder/down = null	//the ladder below this one
	var/obj/structure/ladder/up = null		//the ladder above this one

/obj/structure/ladder/unbreakable //mostly useful for awaymissions to prevent halting progress in a mission
	name = "sturdy ladder"
	desc = "An extremely sturdy metal ladder."


/obj/structure/ladder/initialize()
	spawn(1200)
		for(var/obj/structure/ladder/L in world)
			if(L.id == id)
				if(L.height == (height - 1))
					down = L
					continue
				if(L.height == (height + 1))
					up = L
					continue

			if(up && down)	//if both our connections are filled
				break
		update_icon()

/obj/structure/ladder/update_icon()
	if(up && down)
		icon_state = "ladder_middle"

	else if(up)
		icon_state = "ladder_bottom"

	else if(down)
		icon_state = "ladder_top"

	else	//wtf make your ladders properly assholes
		icon_state = "ladder_dmg"

/obj/structure/ladder/proc/go_up(mob/user,is_ghost)
	if(!is_ghost)
		up.add_fingerprint(user)
	user.forceMove(get_turf(up))

/obj/structure/ladder/proc/go_down(mob/user,is_ghost)
	if(!is_ghost)
		down.add_fingerprint(user)
	user.forceMove(get_turf(down))

/obj/structure/ladder/proc/use(mob/user,is_ghost=0)
	if(up && down)
		switch( alert("Go up or down the ladder?", "Ladder", "Up", "Down", "Cancel") )
			if("Up")
				go_up(user,is_ghost)
			if("Down")
				go_down(user,is_ghost)
			if("Cancel")
				return
	else if(up)
		go_up(user,is_ghost)
	else if(down)
		go_down(user,is_ghost)
	else
		to_chat(user, "<span class='warning'>[src] doesn't seem to lead anywhere!</span>")

	if(!is_ghost)
		add_fingerprint(user)

/obj/structure/ladder/attack_hand(mob/user)
	if(can_use(user))
		use(user)


//////////////////////////////DRAGGING PEOPLE VIA LADDERS//////////////////////////////
/obj/structure/ladder/MouseDrop_T(obj/O, mob/user, /obj/structure/ladder/L)
	for(var/obj/structure/ladder/L in world)
		if(L.height == (height - 1))
			go_down(O)
		else
			go_up(O)
//////////////////////////////DRAGGING PEOPLE VIA LADDERS//////////////////////////////


/obj/structure/ladder/attack_paw(mob/user)
	return attack_hand(user)

/obj/structure/ladder/attackby(obj/item/weapon/W, mob/user, params)
	return attack_hand(user)

/obj/structure/ladder/attack_ghost(mob/dead/observer/user)
	use(user,1)

/obj/structure/ladder/proc/can_use(mob/user)
	return 1

/obj/structure/ladder/unbreakable/Destroy(force)
	if(force)
		. = ..()
	else
		return QDEL_HINT_LETMELIVE

/obj/structure/ladder/cactus
	name = "odd cactus"
	desc = "An old cactus. this one seems weird."
	icon = 'icons/fallout/flora/trees.dmi'
obj/structure/ladder/cactus/update_icon()
	if(up && down)
		icon_state = "cactus"

	else if(up)
		icon_state = "cactus"

	else if(down)
		icon_state = "cactus"

	else	//wtf make your ladders properly assholes
		icon_state = "cactus"

/obj/structure/ladder/tree
	name = "dead tree"
	desc = "An old dead tree."
	icon = 'icons/fallout/flora/talltrees.dmi'
obj/structure/ladder/tree/update_icon()
	if(up && down)
		icon_state = "tree_2"

	else if(up)
		icon_state = "tree_2"

	else if(down)
		icon_state = "tree_2"

	else	//wtf make your ladders properly assholes
		icon_state = "tree_2"

/obj/structure/ladder/vent
	name = "vent"
	desc = "A blue vent good for air circulation."
	icon = 'icons/fallout/objects/decals.dmi'
obj/structure/ladder/vent/update_icon()
	if(up && down)
		icon_state = "ventblue"

	else if(up)
		icon_state = "ventblue"

	else if(down)
		icon_state = "ventblue"

	else	//wtf make your ladders properly assholes
		icon_state = "ventblue"



/obj/structure/roadtravel
	name = "highway travel route"
	desc = "A travel route via the blasted remnants of America's highways."
	icon = 'icons/fallout/objects/structures/stationary.dmi'
	icon_state = "verticalroadup"
	anchored = 1
	resistance_flags = INDESTRUCTIBLE
	var/id = null
	var/height = 0							//the 'height' of the ladder. higher numbers are considered physically higher
	var/obj/structure/roadtravel/down = null	//the ladder below this one
	var/obj/structure/roadtravel/up = null		//the ladder above this one

/obj/structure/roadtravel/initialize()
	spawn(1200)
		for(var/obj/structure/roadtravel/RT in world)
			if(RT.id == id)
				if(RT.height == (height - 1))
					down = RT
					continue
				if(RT.height == (height + 1))
					up = RT
					continue

			if(up && down)	//if both our connections are filled
				break
		update_icon()

/obj/structure/roadtravel/proc/go_up(mob/user,is_ghost)
	if(!is_ghost)
		up.add_fingerprint(user)
	user.forceMove(get_turf(up))

/obj/structure/roadtravel/proc/go_down(mob/user,is_ghost)
	if(!is_ghost)
		down.add_fingerprint(user)
	user.forceMove(get_turf(down))

/obj/structure/roadtravel/proc/use(mob/user,is_ghost=0)
	if(up && down)
		switch( alert("Travel along the highway route?", "Highway Travel Route", "Yes", "No", "Cancel") )
			if("Up")
				go_up(user,is_ghost)
			if("Down")
				go_down(user,is_ghost)
			if("Cancel")
				return
	else if(up)
		go_up(user,is_ghost)
	else if(down)
		go_down(user,is_ghost)
	else
		to_chat(user, "<span class='warning'>[src] doesn't seem to lead anywhere!</span>")

	if(!is_ghost)
		add_fingerprint(user)

/obj/structure/roadtravel/attack_hand(mob/user)
	if(can_use(user))
		use(user)

/obj/structure/roadtravel/attack_paw(mob/user)
	return attack_hand(user)

/obj/structure/roadtravel/attackby(obj/item/weapon/W, mob/user, params)
	return attack_hand(user)

/obj/structure/roadtravel/attack_ghost(mob/dead/observer/user)
	use(user,1)

/obj/structure/roadtravel/proc/can_use(mob/user)
	return 1

/obj/structure/roadtravel/unbreakable/Destroy(force)
	if(force)
		. = ..()
	else
		return QDEL_HINT_LETMELIVE


//////////////////////////////DRAGGING PEOPLE VIA ROADS//////////////////////////////
/obj/structure/roadtravel/MouseDrop_T(obj/O, mob/user, /obj/structure/roadtravel/R)
	for(var/obj/structure/roadtravel/R in world)
		if(R.height == (height - 1))
			go_down(O)
		else
			go_up(O)
//////////////////////////////DRAGGING PEOPLE VIA ROADS//////////////////////////////
