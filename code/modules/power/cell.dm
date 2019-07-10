/obj/item/weapon/stock_parts/cell
	name = "Microfusion cell"
	desc = "A rechargable miniature fusion reaction contained within a compact power cell, roughly the size of a golf ball."
	icon = 'icons/obj/power.dmi'
	icon_state = "cell"
	item_state = "cell"
	origin_tech = "powerstorage=1"
	force = 5
	throwforce = 5
	throw_speed = 2
	throw_range = 5
	w_class = WEIGHT_CLASS_SMALL
	var/charge = 0	// note %age conveted to actual charge in New
	var/maxcharge = 1000
	materials = list(MAT_METAL=400, MAT_GLASS=400)
	var/rigged = 0		// true if rigged to explode
	var/chargerate = 250 //how much power is given every tick in a recharger
	var/self_recharge = 0 //does it self recharge, over time, or not?
	var/ratingdesc = TRUE
	var/grown_battery = FALSE // If it's a grown that acts as a battery, add a wire overlay to it.

/obj/item/weapon/stock_parts/cell/New()
	..()
	START_PROCESSING(SSobj, src)
	charge = maxcharge
	if(ratingdesc)
		desc += " This one has a power rating of [maxcharge], and you should not swallow it."
	updateicon()

/obj/item/weapon/stock_parts/cell/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/weapon/stock_parts/cell/vv_edit_var(var_name, var_value)
	switch(var_name)
		if("self_recharge")
			if(var_value)
				START_PROCESSING(SSobj, src)
			else
				STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/weapon/stock_parts/cell/process()
	if(self_recharge)
		give(chargerate * 0.25)
	else
		return PROCESS_KILL

/obj/item/weapon/stock_parts/cell/proc/updateicon()
	cut_overlays()
	if(grown_battery)
		add_overlay(image('icons/obj/power.dmi', "grown_wires"))
	if(charge < 0.01)
		return
	else if(charge/maxcharge >=0.995)
		add_overlay(image('icons/obj/power.dmi', "cell-o2"))
	else
		add_overlay(image('icons/obj/power.dmi', "cell-o1"))

/obj/item/weapon/stock_parts/cell/proc/percent()		// return % charge of cell
	return 100*charge/maxcharge

// use power from a cell
/obj/item/weapon/stock_parts/cell/proc/use(amount)
	if(rigged && amount > 0)
		explode()
		return 0
	if(charge < amount)
		return 0
	charge = (charge - amount)
	if(!istype(loc, /obj/machinery/power/apc))
		feedback_add_details("cell_used","[src.type]")
	return 1

// recharge the cell
/obj/item/weapon/stock_parts/cell/proc/give(amount)
	if(rigged && amount > 0)
		explode()
		return 0
	if(maxcharge < amount)
		amount = maxcharge
	var/power_used = min(maxcharge-charge,amount)
	charge += power_used
	return power_used

/obj/item/weapon/stock_parts/cell/examine(mob/user)
	..()
	if(rigged)
		to_chat(user, "<span class='danger'>This power cell seems to be faulty!</span>")
	else
		to_chat(user, "The charge meter reads [round(src.percent() )]%.")

/obj/item/weapon/stock_parts/cell/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is licking the electrodes of [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return (FIRELOSS)

/obj/item/weapon/stock_parts/cell/attackby(obj/item/W, mob/user, params)
	..()
	if(istype(W, /obj/item/weapon/reagent_containers/syringe))
		var/obj/item/weapon/reagent_containers/syringe/S = W
		to_chat(user, "<span class='notice'>You inject the solution into the power cell.</span>")
		if(S.reagents.has_reagent("plasma", 5))
			rigged = 1
		S.reagents.clear_reagents()


/obj/item/weapon/stock_parts/cell/proc/explode()
	var/turf/T = get_turf(src.loc)
/*
 * 1000-cell	explosion(T, -1, 0, 1, 1)
 * 2500-cell	explosion(T, -1, 0, 1, 1)
 * 10000-cell	explosion(T, -1, 1, 3, 3)
 * 15000-cell	explosion(T, -1, 2, 4, 4)
 * */
	if (charge==0)
		return
	var/devastation_range = -1 //round(charge/11000)
	var/heavy_impact_range = round(sqrt(charge)/60)
	var/light_impact_range = round(sqrt(charge)/30)
	var/flash_range = light_impact_range
	if (light_impact_range==0)
		rigged = 0
		corrupt()
		return
	//explosion(T, 0, 1, 2, 2)
	explosion(T, devastation_range, heavy_impact_range, light_impact_range, flash_range)
	qdel(src)

/obj/item/weapon/stock_parts/cell/proc/corrupt()
	return

/obj/item/weapon/stock_parts/cell/emp_act(severity)
	return

/obj/item/weapon/stock_parts/cell/ex_act(severity, target)
	..()
	if(!qdeleted(src))
		switch(severity)
			if(2)
				if(prob(50))
					corrupt()
			if(3)
				if(prob(25))
					corrupt()


/obj/item/weapon/stock_parts/cell/blob_act(obj/structure/blob/B)
	ex_act(1)

/obj/item/weapon/stock_parts/cell/proc/get_electrocute_damage()
	if(charge >= 1000)
		return Clamp(round(charge/10000), 10, 90) + rand(-5,5)
	else
		return 0

/* Cell variants*/
/obj/item/weapon/stock_parts/cell/crap
	name = "\improper Microfusion cell"
	desc = "A very shoddily put together cell, you're not sure it won't just explode." //TOTALLY TRADEMARK INFRINGEMENT
	maxcharge = 500
	materials = list(MAT_GLASS=40)
	rating = 2

/obj/item/weapon/stock_parts/cell/crap/empty/New()
	..()
	charge = 0

/obj/item/weapon/stock_parts/cell/secborg
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION SECBORG"
	origin_tech = null
	maxcharge = 600	//600 max charge / 100 charge per shot = six shots
	materials = list(MAT_GLASS=40)
	rating = 2.5

/obj/item/weapon/stock_parts/cell/secborg/empty/New()
	..()
	charge = 0

/obj/item/weapon/stock_parts/cell/pulse //200 pulse shots
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION PULSE"
	maxcharge = 40000
	rating = 3
	chargerate = 1500

/obj/item/weapon/stock_parts/cell/pulse/carbine //25 pulse shots
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION PCARBINE"
	maxcharge = 5000

/obj/item/weapon/stock_parts/cell/pulse/pistol //10 pulse shots
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION PPISTOL"
	maxcharge = 2000

/obj/item/weapon/stock_parts/cell/high
	name = "high-capacity Microfusion cell"
	origin_tech = "powerstorage=2;materials=2;engineering=1"
	icon_state = "hcell"
	maxcharge = 2250
	materials = list(MAT_METAL = 17500, MAT_GLASS = 17500)
	rating = 3
	chargerate = 450

/obj/item/weapon/stock_parts/cell/high/plus
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION HIGHPLUS"
	origin_tech = "materials=5;engineering=5;powerstorage=4"
	desc = "A microfusion cell straight out of Big MT. The technology behind how it works isn't really known by anyone outside of Big MT, but it can recharge itself without need of a charging station. Functionally this is an unlimited power source for all but the most energy intensive purposes. The future, today."
	icon_state = "h+cell"
	maxcharge = 12500
	materials = list(MAT_METAL = 100000, MAT_GLASS = 100000, MAT_GOLD = 200, MAT_SILVER = 200, MAT_URANIUM = 100)
	chargerate = 300

/obj/item/weapon/stock_parts/cell/high/empty/New()
	..()
	charge = 0

/obj/item/weapon/stock_parts/cell/super
	name = "super-capacity Microfusion cell"
	origin_tech = "powerstorage=3;materials=3;engineering=2"
	icon_state = "scell"
	maxcharge = 5000
	materials = list(MAT_METAL = 5000, MAT_GLASS = 5000, MAT_GOLD = 300, MAT_SILVER = 300, MAT_URANIUM = 100)
	rating = 4
	chargerate = 500

/obj/item/weapon/stock_parts/cell/super/empty/New()
	..()
	charge = 0

/obj/item/weapon/stock_parts/cell/hyper
	name = "hyper-capacity Microfusion cell"
	origin_tech = "powerstorage=4;materials=4;engineering=4"
	icon_state = "hpcell"
	maxcharge = 8000
	materials = list(MAT_METAL = 1000, MAT_GLASS = 1000, MAT_GOLD = 500, MAT_SILVER = 500, MAT_URANIUM = 200)
	rating = 5
	chargerate = 750

/obj/item/weapon/stock_parts/cell/hyper/empty/New()
	..()
	charge = 0

/obj/item/weapon/stock_parts/cell/bluespace
	name = "bluespace Microfusion cell"
	desc = "A self-sustaining microfusion reaction contained within a quantum bubble, you don't understand how it works but it generates power equivalent to multiple 100MT nuclear detonations simultaneously. You probably shouldn't eat it."
	origin_tech = "powerstorage=5;materials=5;engineering=5;bluespace=1"
	icon_state = "bscell"
	maxcharge = 12500
	materials = list(MAT_METAL = 100, MAT_GLASS = 100, MAT_SILVER = 2000, MAT_GOLD = 2000, MAT_DIAMOND = 500, MAT_URANIUM = 200)
	rating = 6
	chargerate = 1250
	self_recharge = 1

/obj/item/weapon/stock_parts/cell/bluespace/empty/New()
	..()
	charge = 0

/obj/item/weapon/stock_parts/cell/infinite
	name = "badmin infinite power cell!"
	icon_state = "icell"
	origin_tech =  "powerstorage=7"
	maxcharge = 30000
	materials = list(MAT_GLASS=1000)
	rating = 6
	chargerate = 30000

/obj/item/weapon/stock_parts/cell/infinite/use()
	return 1

/obj/item/weapon/stock_parts/cell/infinite/abductor
	name = "void core"
	desc = "An alien power core plucked from a crashed UFO. It seems to fit into any position a Microfusion cell would... what a coincidence."
	icon = 'icons/obj/abductor.dmi'
	icon_state = "cell"
	origin_tech =  "abductor=5;powerstorage=8;engineering=6"
	maxcharge = 50000
	rating = 12
	ratingdesc = FALSE
	chargerate = 50000
	self_recharge = 1

/obj/item/weapon/stock_parts/cell/infinite/abductor/update_icon()
	return


/obj/item/weapon/stock_parts/cell/potato
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION POTATOCELL"
	desc = "A rechargable starch based power cell."
	icon = 'icons/obj/hydroponics/harvest.dmi'
	icon_state = "potato"
	origin_tech = "powerstorage=1;biotech=1"
	charge = 100
	maxcharge = 300
	materials = list()
	rating = 1
	grown_battery = TRUE //it has the overlays for wires

/obj/item/weapon/stock_parts/cell/high/slime
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION SLIMECELL"
	desc = "A yellow slime core infused with plasma, it crackles with power."
	origin_tech = "powerstorage=5;biotech=4"
	icon = 'icons/mob/slimes.dmi'
	icon_state = "yellow slime extract"
	materials = list()
	self_recharge = 1 // Infused slime cores self-recharge, over time

/obj/item/weapon/stock_parts/cell/emproof
	name = "THIS CELL SHOULD NOT BE SPAWNING PLEASE REPORT THIS TO AN ADMIN MENTION EMPCELL"
	desc = "An EMP-proof cell."
	maxcharge = 500
	rating = 2
