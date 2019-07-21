/**********************Mining Equipment Vendor**************************/

/obj/machinery/mineral/equipment_vendor
    name = "mining equipment vendor"
    desc = "An equipment vendor for miners, points collected at an ore redemption machine can be spent here."
    icon = 'icons/obj/machines/mining_machines.dmi'
    icon_state = "mining"
    density = 1
    anchored = 1
    var/obj/item/weapon/card/id/inserted_id
    var/list/prize_list = list( //if you add something to this, please, for the love of god, use tabs and not spaces.
        new /datum/data/mining_equipment("Stimpak",					/obj/item/weapon/reagent_containers/pill/patch/stimpak,400),
        new /datum/data/mining_equipment("Super Stimpak",			/obj/item/weapon/reagent_containers/pill/patch/supstimpak,600),
        new /datum/data/mining_equipment("RadX",					/obj/item/weapon/reagent_containers/pill/patch/radx,800),
        new /datum/data/mining_equipment("Whiskey",            		/obj/item/weapon/reagent_containers/food/drinks/bottle/whiskey,400),
        new /datum/data/mining_equipment("Absinthe",           		/obj/item/weapon/reagent_containers/food/drinks/bottle/absinthe/premium,600),
        new /datum/data/mining_equipment("Point Transfer Card", 	/obj/item/weapon/card/mining_point_card,500),
        new /datum/data/mining_equipment("Colt 1911 Magazine",  	/obj/item/ammo_box/magazine/m45,800),
        new /datum/data/mining_equipment("800 caps",            	/obj/item/stack/caps/minerpayment,1000),
       	new /datum/data/mining_equipment("Brute First-Aid Kit", 	/obj/item/weapon/storage/firstaid/brute,2000),
       	new /datum/data/mining_equipment("Decorative Colt 1911",	/obj/item/weapon/gun/ballistic/automatic/pistol/coltofficer,4000),
        new /datum/data/mining_equipment("Jump Boots",          	/obj/item/clothing/shoes/bhop,9000),
        new /datum/data/mining_equipment("Super Sledge",  			/obj/item/weapon/twohanded/superhammer,15000),
        new /datum/data/mining_equipment("Missile Launcher",    	/obj/item/weapon/gun/ballistic/automatic/atlauncher,18000),
        )

/datum/data/mining_equipment
    var/equipment_name = "generic"
    var/equipment_path = null
    var/cost = 0

/datum/data/mining_equipment/New(name, path, cost)
    src.equipment_name = name
    src.equipment_path = path
    src.cost = cost

/obj/machinery/mineral/equipment_vendor/New()
    ..()
    var/obj/item/weapon/circuitboard/machine/B = new /obj/item/weapon/circuitboard/machine/mining_equipment_vendor(null)
    B.apply_default_parts(src)

/obj/item/weapon/circuitboard/machine/mining_equipment_vendor
    name = "Mining Equipment Vendor (Machine Board)"
    build_path = /obj/machinery/mineral/equipment_vendor
    origin_tech = "programming=1;engineering=3"
    req_components = list(
                            /obj/item/weapon/stock_parts/console_screen = 1,
                            /obj/item/weapon/stock_parts/matter_bin = 3)

/obj/machinery/mineral/equipment_vendor/power_change()
    ..()
    update_icon()

/obj/machinery/mineral/equipment_vendor/update_icon()
    if(powered())
        icon_state = initial(icon_state)
    else
        icon_state = "[initial(icon_state)]-off"
    return

/obj/machinery/mineral/equipment_vendor/attack_hand(mob/user)
    if(..())
        return
    interact(user)

/obj/machinery/mineral/equipment_vendor/interact(mob/user)
    var/dat
    dat +="<div class='statusDisplay'>"
    if(istype(inserted_id))
        dat += "You have [inserted_id.mining_points] mining points collected. <A href='?src=\ref[src];choice=eject'>Eject ID.</A><br>"
    else
        dat += "No ID inserted.  <A href='?src=\ref[src];choice=insert'>Insert ID.</A><br>"
    dat += "</div>"
    dat += "<br><b>Equipment point cost list:</b><BR><table border='0' width='300'>"
    for(var/datum/data/mining_equipment/prize in prize_list)
        dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Purchase</A></td></tr>"
    dat += "</table>"

    var/datum/browser/popup = new(user, "miningvendor", "Mining Equipment Vendor", 400, 350)
    popup.set_content(dat)
    popup.open()
    return

/obj/machinery/mineral/equipment_vendor/Topic(href, href_list)
    if(..())
        return
    if(href_list["choice"])
        if(istype(inserted_id))
            if(href_list["choice"] == "eject")
                inserted_id.forceMove(loc)
                inserted_id.verb_pickup()
                inserted_id = null
        else if(href_list["choice"] == "insert")
            var/obj/item/weapon/card/id/I = usr.get_active_held_item()
            if(istype(I))
                if(!usr.drop_item())
                    return
                I.forceMove(src)
                inserted_id = I
            else to_chat(usr, "<span class='danger'>No valid ID.</span>")
    if(href_list["purchase"])
        if(istype(inserted_id))
            var/datum/data/mining_equipment/prize = locate(href_list["purchase"])
            if (!prize || !(prize in prize_list))
                return
            if(prize.cost > inserted_id.mining_points)
            else
                inserted_id.mining_points -= prize.cost
                new prize.equipment_path(src.loc)
                feedback_add_details("mining_equipment_bought",
                    "[src.type]|[prize.equipment_path]")
                // Add src.type to keep track of free golem purchases
                // seperately.
    updateUsrDialog()
    return

/obj/machinery/mineral/equipment_vendor/attackby(obj/item/I, mob/user, params)
    if(istype(I, /obj/item/weapon/mining_voucher))
        RedeemVoucher(I, user)
        return
    if(istype(I,/obj/item/weapon/card/id))
        var/obj/item/weapon/card/id/C = usr.get_active_held_item()
        if(istype(C) && !istype(inserted_id))
            if(!usr.drop_item())
                return
            C.forceMove(src)
            inserted_id = C
            interact(user)
        return
    if(default_deconstruction_screwdriver(user, "mining-open", "mining", I))
        updateUsrDialog()
        return
    if(default_deconstruction_crowbar(I))
        return
    return ..()

/obj/machinery/mineral/equipment_vendor/proc/RedeemVoucher(obj/item/weapon/mining_voucher/voucher, mob/redeemer)
    var/items = list("Survival Capsule and Explorer's Webbing", "Resonator and Advanced Scanner", "Mining Drone", "Extraction and Rescue Kit", "Crusher Kit", "Mining Conscription Kit")

    var/selection = input(redeemer, "Pick your equipment", "Mining Voucher Redemption") as null|anything in items
    if(!selection || !Adjacent(redeemer) || qdeleted(voucher) || voucher.loc != redeemer)
        return
    switch(selection)
        if("Survival Capsule and Explorer's Webbing")
            new /obj/item/weapon/storage/belt/mining/vendor(src.loc)
        if("Resonator and Advanced Scanner")
            new /obj/item/weapon/resonator(src.loc)
            new /obj/item/device/t_scanner/adv_mining_scanner(src.loc)
        if("Mining Drone")
            new /mob/living/simple_animal/hostile/mining_drone(src.loc)
            new /obj/item/weapon/weldingtool/hugetank(src.loc)
            new /obj/item/clothing/glasses/welding(src.loc)
        if("Extraction and Rescue Kit")
            new /obj/item/weapon/extraction_pack(loc)
            new /obj/item/fulton_core(loc)
        if("Crusher Kit")
            new /obj/item/weapon/twohanded/required/mining_hammer(loc)
            new /obj/item/weapon/storage/belt/mining/alt(loc)
            new /obj/item/weapon/extinguisher/mini(loc)
        if("Mining Conscription Kit")
            new /obj/item/weapon/storage/backpack/dufflebag/mining_conscript(loc)

    feedback_add_details("mining_voucher_redeemed", selection)
    qdel(voucher)

/obj/machinery/mineral/equipment_vendor/ex_act(severity, target)
    var/datum/effect_system/spark_spread/s = new /datum/effect_system/spark_spread
    s.set_up(5, 1, src)
    s.start()
    if(prob(50 / severity) && severity < 3)
        qdel(src)


/****************Golem Point Vendor**************************/

/obj/machinery/mineral/equipment_vendor/golem
    name = "golem ship equipment vendor"

/obj/machinery/mineral/equipment_vendor/golem/New()
    ..()
    desc += "\nIt seems a few selections have been added."
    prize_list += list(
        new /datum/data/mining_equipment("Science Goggles",         /obj/item/clothing/glasses/science,                                     250),
        new /datum/data/mining_equipment("Monkey Cube",             /obj/item/weapon/reagent_containers/food/snacks/monkeycube,             300),
        new /datum/data/mining_equipment("Toolbelt",                /obj/item/weapon/storage/belt/utility,                                  350),
        new /datum/data/mining_equipment("Sulphuric Acid",          /obj/item/weapon/reagent_containers/glass/beaker/sulphuric,             500),
        new /datum/data/mining_equipment("Brute First-Aid Kit",     /obj/item/weapon/storage/firstaid/brute,                                600),
        new /datum/data/mining_equipment("Grey Slime Extract",      /obj/item/slime_extract/grey,                                           1000),
        new /datum/data/mining_equipment("Modification Kit",        /obj/item/borg/upgrade/modkit/trigger_guard,                            1700),
        new /datum/data/mining_equipment("The Liberator's Legacy",  /obj/item/weapon/storage/box/rndboards,                                 2000),

        )

    var/obj/item/weapon/circuitboard/machine/B = new /obj/item/weapon/circuitboard/machine/mining_equipment_vendor/golem(null)
    B.apply_default_parts(src)

/obj/item/weapon/circuitboard/machine/mining_equipment_vendor/golem
    name = "Golem Ship Equipment Vendor (Machine Board)"
    build_path = /obj/machinery/mineral/equipment_vendor/golem


/**********************Mining Equipment Vendor Items**************************/

/**********************Mining Equipment Voucher**********************/

/obj/item/weapon/mining_voucher
    name = "mining voucher"
    desc = "A token to redeem a piece of equipment. Use it on a mining equipment vendor."
    icon = 'icons/obj/mining.dmi'
    icon_state = "mining_voucher"
    w_class = WEIGHT_CLASS_TINY

/**********************Mining Point Card**********************/

/obj/item/weapon/card/mining_point_card
    name = "mining points card"
    desc = "A small card preloaded with mining points. Swipe your ID card over it to transfer the points, then discard."
    icon_state = "data"
    var/points = 500

/obj/item/weapon/card/mining_point_card/attackby(obj/item/I, mob/user, params)
    if(istype(I, /obj/item/weapon/card/id))
        if(points)
            var/obj/item/weapon/card/id/C = I
            C.mining_points += points
            to_chat(user, "<span class='info'>You transfer [points] points to [C].</span>")
            points = 0
        else
            to_chat(user, "<span class='info'>There's no points left on [src].</span>")
    ..()

/obj/item/weapon/card/mining_point_card/examine(mob/user)
    ..()
    to_chat(user, "There's [points] point\s on the card.")

///Conscript kit
/obj/item/weapon/card/mining_access_card
    name = "mining access card"
    desc = "A small card, that when used on any ID, will add mining access."
    icon_state = "data"

/obj/item/weapon/card/mining_access_card/afterattack(atom/movable/AM, mob/user, proximity)
    if(istype(AM, /obj/item/weapon/card/id) && proximity)
        var/obj/item/weapon/card/id/I = AM
        I.access |= access_mining
        I.access |= access_mining_station
        I.access |= access_mineral_storeroom
        I.access |= access_cargo
        to_chat(user, "You upgrade [I] with mining access.")
        qdel(src)
    ..()

/obj/item/weapon/storage/backpack/dufflebag/mining_conscript
    name = "mining conscription kit"
    desc = "A kit containing everything a crewmember needs to support a shaft miner in the field."

/obj/item/weapon/storage/backpack/dufflebag/mining_conscript/New()
    ..()
    new /obj/item/weapon/pickaxe/mini(src)
    new /obj/item/clothing/glasses/meson(src)
    new /obj/item/device/t_scanner/adv_mining_scanner/lesser(src)
    new /obj/item/weapon/storage/bag/ore(src)
    new /obj/item/clothing/suit/hooded/explorer(src)
    new /obj/item/device/encryptionkey/headset_cargo(src)
    new /obj/item/clothing/mask/gas/explorer(src)
    new /obj/item/weapon/card/mining_access_card(src)
