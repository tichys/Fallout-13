//horrifying power drain proc made for clockcult's power drain in lieu of six istypes or six for(x in view) loops
/atom/movable/proc/power_drain(clockcult_user)
	return 0

/obj/machinery/power/apc/power_drain(clockcult_user)
	if(cell && cell.charge)
		playsound(src, "sparks", 50, 1)
		flick("apc-spark", src)
		. = min(cell.charge, 250)
		cell.use(.) //Better than a power sink!
		if(!cell.charge && !shorted)
			shorted = 1
			visible_message("<span class='warning'>The [name]'s screen blurs with static.</span>")
		update()
		update_icon()

/obj/machinery/power/smes/power_drain(clockcult_user)
	if(charge)
		. = min(charge, 250)
		charge -= . * 50
		if(!charge && !panel_open)
			panel_open = TRUE
			icon_state = "[initial(icon_state)]-o"
			var/datum/effect_system/spark_spread/spks = new(get_turf(src))
			spks.set_up(10, 0, get_turf(src))
			spks.start()
			visible_message("<span class='warning'>[src]'s panel flies open with a flurry of spark</span>")
		update_icon()

/obj/item/weapon/stock_parts/cell/power_drain(clockcult_user)
	if(charge)
		. = min(charge, 250)
		charge = use(.)
		updateicon()

/obj/machinery/light/power_drain(clockcult_user)
	if(on)
		playsound(src, 'sound/effects/light_flicker.ogg', 50, 1)
		. = 250

/mob/living/silicon/robot/power_drain(clockcult_user)
	if((!clockcult_user || !is_servant_of_ratvar(src)) && cell && cell.charge)
		. = min(cell.charge, 250)
		cell.use(.)
		to_chat(src, "<span class='userdanger'>ERROR: Power loss detected!</span>")
		spark_system.start()

/obj/mecha/power_drain(clockcult_user)
	if((!clockcult_user || !occupant || occupant && !is_servant_of_ratvar(occupant)) && cell && cell.charge)
		. = min(cell.charge, 250)
		cell.use(.)
		occupant_message("<span class='userdanger'>Power loss detected!</span>")
		spark_system.start()
