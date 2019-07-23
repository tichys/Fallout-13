/obj/machinery/bounty_machine/faction
	/* Available item types and prices. [key] - item type< [value] - item price*/
	var/list/price_list = list()

	/* Will create one copy for each item in price list.*/
	var/list/items_ref_list = list()

	/* How many caps stored in machine */
	var/stored_caps = 0

	/* Only head of this faction will have access to machine */
	var/faction_id = "city"

	/* If true - everyone can use machine. If false - only a faction head */
	var/free_access = 0

	/* In vend mode user can buy items. If not - user can complete quests */
	var/vend_mode = 0

/*
================ Content =====================
*/

/*  CITY */
/obj/machinery/bounty_machine/faction/city
	name = "City CentrComm Terminal"
	desc = "High quality goods, weapons, equipment and implants for city dwellers."
	resistance_flags = INDESTRUCTIBLE
	icon_state = "terminal"
	faction_id = "city"
	price_list = list(
				/obj/item/stack/sheet/metal/ = 150,
				/obj/item/stack/sheet/rglass = 200,
				/obj/item/stack/sheet/glass = 150,
				/obj/item/clothing/glasses/hud/health = 2500,
				/obj/item/weapon/gun/ballistic/automatic/wt550 = 1100,
				/obj/item/weapon/gun/ballistic/shotgun/automatic/dual_tube = 2700,
				/obj/item/seeds/tomato/blood = 1000,
				/obj/item/seeds/tomato/killer = 1200,
				/obj/item/seeds/potato/sweet = 800,
				/obj/item/seeds/banana = 900,
				/obj/item/seeds/tobacco = 600,
				/obj/item/seeds/grass = 1000,
				/obj/item/seeds/grape = 1200,
				/obj/item/seeds/ambrosia = 1100,
				/obj/item/weapon/implanter/adrenalin = 4500,
				/obj/item/weapon/implanter/storage = 8000,
				/obj/item/seeds/cannabis = 1800,
				/obj/structure/reagent_dispensers/barrel/explosive = 700,
				/obj/item/weapon/surgical_drapes = 300,
				/obj/item/weapon/reagent_containers/glass/beaker/bluespace = 1100,
				/obj/item/organ/cyberimp/eyes/xray = 20000,
				/obj/item/organ/cyberimp/eyes/thermals = 27500,
				/obj/item/organ/cyberimp/chest/reviver = 14000,
				/obj/item/weapon/storage/backpack/explorer = 9000,
				/obj/item/clothing/glasses/hud/health/night = 14000,
				/obj/item/weapon/storage/bag/plants/portaseeder = 12000,
				/obj/item/clothing/mask/gas/syndicate = 4500,
				/obj/item/weapon/tank/internals/emergency_oxygen/double = 1800
					)


/* GUN TRADER */

/obj/machinery/bounty_machine/faction/guntrader
	name = "Gun Trader"
	desc = "A vending machine of sorts, hooked up to what can only be described as a matter printer that creates the requested item upon payment. Astounding!"
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "weapon_idle"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
	            /obj/item/weapon/gun/ballistic/automatic/smg9mm = 900,
	            /obj/item/weapon/gun/ballistic/automatic/pistol/mp443 = 1300,
				/obj/item/weapon/gun/ballistic/automatic/pistol/p226 = 1450,
				/obj/item/weapon/gun/ballistic/automatic/pistol/taurus = 1900,
				/obj/item/weapon/gun/ballistic/automatic/pistol/browning = 3100,
				/obj/item/weapon/gun/ballistic/automatic/pistol/model6906 = 1500,
				/obj/item/weapon/gun/ballistic/automatic/pistol/model639 = 1450,
				/obj/item/weapon/gun/ballistic/automatic/pistol/p38 = 2150,
				/obj/item/weapon/gun/ballistic/automatic/pistol/p38snub = 1125,
				/obj/item/weapon/gun/ballistic/automatic/pistol/coltclone = 1500,
				/obj/item/weapon/gun/ballistic/automatic/pistol/p220 = 1450,
				/obj/item/weapon/gun/ballistic/automatic/pistol/coltofficer = 1850,
				/obj/item/weapon/gun/ballistic/automatic/pistol/glock = 1400,
				/obj/item/weapon/gun/ballistic/automatic/pistol/n99 = 1700,
				/obj/item/weapon/gun/ballistic/automatic/smg10mm = 1850,
				/obj/item/weapon/gun/ballistic/automatic/pistol/deagle = 3400,
				/obj/item/weapon/gun/ballistic/revolver/model10 = 1900,
				/obj/item/weapon/gun/ballistic/revolver/model10snub = 1800,
				/obj/item/weapon/gun/ballistic/revolver/model629 = 2000,
				/obj/item/weapon/gun/ballistic/shotgun/henrytwo = 4200,
				/obj/item/weapon/gun/ballistic/revolver/model66 = 2650,
				/obj/item/weapon/gun/ballistic/revolver/model19 = 2900,
				/obj/item/weapon/gun/ballistic/revolver/sp101 = 1800,
				/obj/item/weapon/gun/ballistic/revolver/derringer = 400,
				/obj/item/weapon/gun/ballistic/revolver/doublerifle = 3250,
				/obj/item/weapon/gun/ballistic/revolver/model460 = 2300,
				/obj/item/weapon/gun/ballistic/revolver/bulldog = 2500,
				/obj/item/weapon/gun/ballistic/revolver/bulldogstainless = 3600,
				/obj/item/weapon/gun/ballistic/automatic/pistol/glock42 = 1700,
				/obj/item/weapon/gun/ballistic/automatic/pistol/ppk = 1600,
				/obj/item/weapon/gun/ballistic/automatic/pistol/model1908 = 2700,
				/obj/item/weapon/gun/ballistic/automatic/pistol/model1934 = 1800,
				/obj/item/weapon/gun/ballistic/automatic/carbine = 1300,
				/obj/item/weapon/gun/ballistic/shotgun/patience = 1750,
				/obj/item/weapon/gun/ballistic/shotgun/huntingshotgun = 1600,
				/obj/item/weapon/gun/ballistic/shotgun = 1850,
				/obj/item/weapon/gun/ballistic/revolver/coachgun = 1450,
				/obj/item/weapon/gun/ballistic/revolver/madmax = 3050,
					)

/* MIKEBOT */

/obj/machinery/bounty_machine/faction/mikebot
	name = "Mikebot 9000"
	desc = "A heavily modified vendortron that sells an extensive inventory of antiquated or otherwise difficult to find firearms, hooked up to what can only be described as a matter printer that creates the requested item upon payment. Does purchasing any of it's stock constitute potential war crimes? LOL naw"
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "mikebot"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
				/obj/item/weapon/gun/ballistic/automatic/pistol/maria = 3600,
				/obj/item/weapon/gun/ballistic/automatic/pistol/samuraiedge = 4850,
				/obj/item/weapon/gun/ballistic/automatic/pistol/shiningdarkness = 6300,
				/obj/item/weapon/gun/ballistic/automatic/pistol/mike1911 = 5200,
				/obj/item/weapon/gun/ballistic/automatic/pistol/redeagle= 8500,
				/obj/item/weapon/gun/ballistic/automatic/pistol/redeagletwo = 6650,
				/obj/item/weapon/gun/ballistic/automatic/pistol/longslide = 5800,
				/obj/item/weapon/gun/ballistic/automatic/pistol/automag = 5150,
				/obj/item/ammo_box/magazine/automag = 850,
				/obj/item/weapon/gun/ballistic/automatic/pistol/lugerzim = 4200,
				/obj/item/weapon/gun/ballistic/revolver/m1917 = 3700,
				/obj/item/weapon/gun/ballistic/revolver/policepistol = 1800,
				/obj/item/weapon/gun/ballistic/revolver/webleynickel = 2200,
				/obj/item/weapon/gun/ballistic/automatic/pistol/silverghost = 2500,
				/obj/item/weapon/gun/ballistic/automatic/pistol/sm1912 = 2750,
				/obj/item/ammo_box/magazine/steyrmag = 1200,
					)
					
/* NCR QUARTERMASTER BOT */

/obj/machinery/bounty_machine/faction/ncrmikebot
	name = "NCR Quartermaster 3000"
	desc = "A heavily modified vendortron, functions as a quartermaster. This one is painted beige-brown, with NCR iconography."
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "qmmikebot"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
				/obj/item/weapon/gun/ballistic/automatic/pistol/browning = 800,
				/obj/item/weapon/gun/ballistic/automatic/assault_rifle = 2000,
				/obj/item/ammo_box/magazine/browning = 500,
				/obj/item/ammo_box/magazine/m556 = 900,
				/obj/item/ammo_box/magazine/m556/ap = 1600,
				/obj/item/weapon/reagent_containers/food/snacks/f13/mre = 200,
				/obj/item/weapon/reagent_containers/pill/patch/stimpak = 500,
				/obj/item/weapon/grenade/flashbang = 2400,
				/obj/item/weapon/grenade/syndieminibomb/concussion = 3000,
				/obj/item/weapon/gun/ballistic/automatic/sniper_rifle = 50000,
				/obj/item/ammo_box/magazine/sniper_rounds = 9000,
				/obj/item/clothing/suit/armor/f13/ncr/patriot = 600,
				/obj/item/clothing/suit/armor/f13/ncr/soldier = 600,
				/obj/item/clothing/suit/armor/f13/ncr/commie = 600,
				/obj/item/clothing/suit/armor/f13/ncr/preacher = 600,
				/obj/item/clothing/suit/armor/f13/ncr/lover = 600,
				/obj/item/clothing/suit/armor/f13/ncr/stalker = 600,
				/obj/item/clothing/suit/armor/f13/ncr/punisher = 600,
				)
					
					
/* LEGION QUARTERMASTERBOT */

/obj/machinery/bounty_machine/faction/legmikebot
	name = "Legion Quartermaster 3000"
	desc = "A heavily modified vendortron, functions as a quartermaster. This one is painted in red and black, with Legion iconography."
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "qmmikebot"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
				/obj/item/weapon/gun/ballistic/revolver/coltwalker = 1800,
				/obj/item/weapon/gun/ballistic/shotgun/rifle = 1400,
				/obj/item/ammo_box/magazine/internal/cylinder/walker = 1200,
				/obj/item/ammo_box/m308 = 1100,
				/obj/item/weapon/reagent_containers/food/snacks/f13/mre = 200,
				/obj/item/weapon/reagent_containers/pill/patch/healingpowder = 300,
				/obj/item/weapon/grenade/chem_grenade/teargas = 2500,
				/obj/item/weapon/storage/box/zipties = 1200,
						)					



/* RAIDER CHEM BOT */

/obj/machinery/bounty_machine/faction/raiderdrugbot
	name = "Raider Chems Dispensery"
	desc = "A heavily modified vendortron. This one sells chems obtained by the raider gangs at a discounted rate - great for stocking up to sell on to wasters, or to get a quick fix."
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "qmmikebot"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
				/obj/item/weapon/reagent_containers/pill/patch/stimpak = 100,
				/obj/item/weapon/reagent_containers/pill/patch/supstimpak = 180,
				/obj/item/weapon/reagent_containers/pill/patch/medx = 250,
				/obj/item/weapon/reagent_containers/pill/patch/radaway = 300,
				/obj/item/weapon/reagent_containers/pill/patch/radx = 325,
				/obj/item/weapon/reagent_containers/pill/patch/jet = 350,
				/obj/item/weapon/reagent_containers/pill/patch/psycho = 400,
				/obj/item/weapon/reagent_containers/pill/patch/turbo = 500,
						)











/* AMMO TRADER */



/obj/machinery/bounty_machine/faction/ammotrader
	name = "Ammo Trader"
	desc = "A vending machine of sorts, hooked up to what can only be described as a matter printer that creates the requested item upon payment. Astounding!"
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "ammo_idle"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
				/obj/item/ammo_box/magazine/luger = 150,
				/obj/item/ammo_box/magazine/smith = 800,
				/obj/item/ammo_box/magazine/norinco = 150,
				/obj/item/ammo_box/magazine/mauser = 150,
				/obj/item/ammo_box/magazine/smithmagsmall = 460,
				/obj/item/ammo_box/magazine/browning = 550,
				/obj/item/ammo_box/magazine/ninepistol = 200,
				/obj/item/ammo_box/magazine/vp70 = 180,
				/obj/item/ammo_box/magazine/mp443 = 320,
				/obj/item/ammo_box/magazine/silverghostmag = 950,
				/obj/item/ammo_box/magazine/smg9mm = 600,
				/obj/item/ammo_box/c9mm = 550,
				/obj/item/ammo_box/magazine/m45 = 750,
				/obj/item/ammo_box/magazine/glock = 450,
				/obj/item/ammo_box/magazine/springfield = 1200,
				/obj/item/ammo_box/magazine/tommygunm45 = 1200,
				/obj/item/ammo_box/c45 = 2500,
				/obj/item/ammo_box/magazine/m50 = 1750,
				/obj/item/ammo_box/magazine/c380small = 1250,
				/obj/item/ammo_box/magazine/c380 = 1350,
				/obj/item/ammo_box/c380 = 1750,
				/obj/item/ammo_box/magazine/m10mm_adv = 650,
				/obj/item/ammo_box/magazine/m10mm_auto = 800,
				/obj/item/ammo_box/c10mm = 700,
				/obj/item/ammo_box/trenchgun = 1000,
				/obj/item/ammo_box/c38 = 450,
				/obj/item/ammo_box/a357 = 850,
				/obj/item/ammo_box/n762 = 900,
				/obj/item/ammo_box/thatgun = 500,
				/obj/item/ammo_box/colt357 = 1200,
				/obj/item/ammo_box/m44 = 1000,
				/obj/item/ammo_box/henry44 = 2100,
				/obj/item/ammo_box/a44spl = 3500,
				/obj/item/ammo_box/c455 = 2800,
				/obj/item/ammo_box/magazine/m440 = 1850,
				/obj/item/ammo_box/magazine/m440/bleed = 3750,
				/obj/item/ammo_box/magazine/killersevenmag = 800,
				/obj/item/ammo_box/model460 = 1500,
				/obj/item/ammo_box/model500 = 2500,
				/obj/item/ammo_box/magazine/m223 = 2000,
				/obj/item/ammo_box/m223 = 3350,
				/obj/item/ammo_box/magazine/internal/shot/garand = 1000,
				/obj/item/ammo_box/magazine/falmag = 1600,
				/obj/item/ammo_box/magazine/m308 = 1800,
				/obj/item/ammo_box/m308 = 2750,
				/obj/item/ammo_box/magazine/m556 = 800,
				/obj/item/ammo_box/magazine/aksumag = 1600,
				/obj/item/ammo_box/magazine/akmag = 1750,
				/obj/item/ammo_box/magazine/carbine = 1500,
				/obj/item/ammo_box/magazine/sniper_rounds = 2750,
					)

/* MEDICAL TRADER */

/obj/machinery/bounty_machine/faction/medtrader
	name = "Medical Trader"
	desc = "A vending machine of sorts, hooked up to what can only be described as a matter printer that creates the requested item upon payment. Astounding!"
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "med_idle"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
				/obj/item/weapon/reagent_containers/pill/patch/stimpak = 400,
				/obj/item/weapon/reagent_containers/pill/patch/supstimpak = 900,
				/obj/item/weapon/reagent_containers/pill/patch/medx = 600,
				/obj/item/weapon/reagent_containers/pill/patch/radaway = 1400,
				/obj/item/weapon/reagent_containers/pill/patch/radx = 2100,
					)

/* CHEM TRADER */

/obj/machinery/bounty_machine/faction/chemtrader
	name = "Chem Trader"
	desc = "A vending machine of sorts, hooked up to what can only be described as a matter printer that creates the requested item upon payment. Astounding! This one seems to have been vandalised and repurposed a bit..."
	resistance_flags = INDESTRUCTIBLE
	icon = 'icons/WVM/machines.dmi'
	icon_state = "chems"
	free_access = 1
	vend_mode = 1
	density = 1

	price_list = list(
				/obj/item/weapon/reagent_containers/pill/patch/jet = 400,
				/obj/item/weapon/reagent_containers/pill/patch/psycho = 1200,
				/obj/item/weapon/reagent_containers/pill/patch/turbo = 1600,
				/obj/item/weapon/reagent_containers/pill/patch/medx = 750,
					)


/*
================ Mechanics ======================
*/
/obj/machinery/bounty_machine/faction/New()
	..()
	for(var/i = 1; i <= price_list.len; i++)
		var/target_type = price_list[i]
		var/atom/A = new target_type(src)
		items_ref_list.Add(A)

/obj/machinery/bounty_machine/faction/Destroy()
	for(var/atom/Itm in items_ref_list)
		qdel(Itm)

/* Add caps */
/obj/machinery/bounty_machine/faction/proc/add_caps(var/obj/item/stack/caps/C)
	if(!C) return

	var/mob/character = usr
	if(character.unEquip(C))
		var/caps_count = C.amount
		stored_caps += caps_count
		playsound(src, 'sound/items/change_jaws.ogg', 60, 1)
		to_chat(usr, "[stored_caps] caps added.")
		qdel(C)

/* Spawn all caps on world and clear caps storage */
/obj/machinery/bounty_machine/faction/proc/remove_all_caps()
	if(stored_caps <= 0)
		return
	var/obj/item/stack/caps/C = new/obj/item/stack/caps
	if(stored_caps > C.max_amount)
		C.add(C.max_amount - 1)
		C.forceMove(src.loc)
		stored_caps -= C.max_amount
	else
		C.add(stored_caps - 1)
		C.forceMove(src.loc)
		stored_caps = 0
	playsound(src, 'sound/items/coinflip.ogg', 60, 1)
	src.ShowUI(usr)

/* Buy item */
/obj/machinery/bounty_machine/faction/proc/buy(var/item_index, var/mob/user)
	if(item_index > price_list.len)
		to_chat(usr, "Wrong item! *beep*")
		return

	if(!connected_pod)
		to_chat(usr, "No pod connected")
		return


	var/target_type = price_list[item_index]

	// Check price
	if(stored_caps >= price_list[target_type])
		// animation
		flick("tele0", connected_pod)

		//Remove caps
		stored_caps -= price_list[target_type]

		// Create item
		new target_type(connected_pod.loc)
		to_chat(usr, "Done. *boop*")
	else
		to_chat(usr, "Not enough caps.")


/*  INTERACTION */
/obj/machinery/bounty_machine/faction/attackby(obj/item/OtherItem, mob/living/carbon/human/user, parameters)

	// CAPS
	if(istype(OtherItem, /obj/item/stack/caps))
		add_caps(OtherItem)

/* GUI */
/* Shop UI*/
/obj/machinery/bounty_machine/faction/proc/GetShopUI()
	var/dat = "<h1>Shop</h1>"
	dat += "<a href='?src=\ref[src];exit=1'>Exit</a><br><br>"
	dat += "<font color = 'green'>Caps stored: [stored_caps]</font>"
	dat += "<a href='?src=\ref[src];removecaps=1'>Remove</a><br>"
	if(free_access)
		dat += "<font color = 'green'><b>Access:</b> Free</font><br>"
	else
		dat += "<font color = 'red'><b>Access:</b> Leader Only</font><br>"

	dat += "<div class='statusDisplay'>"
	for(var/i = 1; i <= price_list.len; i++)
		var/itm_type = price_list[i]
		var/atom/itm_ref = items_ref_list[i]
		var/price = price_list[itm_type]
		if(stored_caps < price_list[itm_type])
			dat += "<a href='?src=\ref[src];examine=[i]'>?</a>"
			dat += "<font color = 'grey'><b> [itm_ref] - [price] </b></font>"
			dat += "<a href='?src=\ref[src];buy=[i]'>Buy</a><br>"
		else
			dat += "<a href='?src=\ref[src];examine=[i]'>?</a>"
			dat += "<font color = 'green'><b> [itm_ref] - [price] </b></font>"
			dat += "<a href='?src=\ref[src];buy=[i]'>Buy</a><br>"
	dat += ""
	dat += "</div>"
	return dat

/* Quest UI */
/obj/machinery/bounty_machine/faction/proc/GetQuestUI()
	var/dat = ""
	var/datum/asset/assets = get_asset_datum(/datum/asset/simple/bounty_employers)
	assets.send(usr)

	dat += "<h1>Wasteland Weapon Station</h1>"

	if(connected_pod)
		dat += "<font color='green'>Pod found</font><br>"
		dat += "<a href='?src=\ref[src];findpod=1'>Rescan</a>"
	else
		dat += "<font color='red'>Pod not found</font><br>"
		dat += "<a href='?src=\ref[src];findpod=1'>Rescan</a>"
	dat += "<a href='?src=\ref[src];shop=1'>Shop</a><br>"
	dat += "<style>.leftimg {float:left;margin: 7px 7px 7px 0;}</style>"

	return dat

/obj/machinery/bounty_machine/faction/ShowUI()
	var/dat
	if(vend_mode)
		dat = GetShopUI()
	else
		dat = GetQuestUI()

	var/datum/browser/popup = new(usr, "bounty", "Vendomat Display", 640, 400) // Set up the popup browser window
	popup.set_content(dat)
	popup.set_title_image(usr.browse_rsc_icon(src.icon, src.icon_state))
	popup.open()

/* Topic */
/obj/machinery/bounty_machine/faction/Topic(href, href_list)
	..()
	if(href_list["exit"])
		vend_mode = 0
	if(href_list["examine"])
		var/itm_index = text2num(href_list["examine"])
		var/obj/T = items_ref_list[itm_index]
		T.examine(usr)
	if(href_list["buy"])
		var/itm_index = text2num(href_list["buy"])
		buy(itm_index, usr)
	if(href_list["shop"])
		vend_mode = 1
	if(href_list["removecaps"])
		remove_all_caps()
	ShowUI()
