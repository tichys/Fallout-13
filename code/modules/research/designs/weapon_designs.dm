/////////////////////////////////////////
/////////////////Weapons/////////////////
/////////////////////////////////////////

/datum/design/pin_firing
	name = "firing pin"
	desc = "A firing pin, inserted into a protolathe-constructed weapon to allow its use."
	id = "pin_testing"
	req_tech = list("materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 20000, MAT_GLASS = 20000)
	build_path = /obj/item/device/firing_pin
	category = list("Weaponry")

/datum/design/temp_gun
	name = "Cryo Gun"
	desc = "A prototype less than lethal rifle, it operates by drastically cooling an affected target area, ideally an individual, to the point that movement becomes difficult and they can be subdued easily."
	id = "temp_gun"
	req_tech = list("materials" = 9, "powerstorage" = 6, "engineering" = 11)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 50000, MAT_GLASS = 20000, MAT_SILVER = 60000, MAT_GOLD = 20000, MAT_DIAMOND = 6000)
	build_path = /obj/item/weapon/gun/energy/temperature
	category = list("Weaponry")

/datum/design/ioncarbine
	name = "Tesla-Ion Carbine"
	desc = "A carbine designed to defeat robotics and opponents reliant on energy weapons, this weapon causes a localized EMP on affected targets which rapidly drains the power level of affected Microfusion cells, including those loaded in weapons, and any electronic equipment they may be carrying."
	id = "ioncarbine"
	req_tech = list("materials" = 3, "powerstorage" = 7, "engineering" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 80000, MAT_GLASS = 36000, MAT_SILVER = 80000, MAT_GOLD = 24000, MAT_DIAMOND = 12000, MAT_URANIUM = 8000)
	build_path = /obj/item/weapon/gun/energy/ionrifle/carbine
	category = list("Weaponry")
