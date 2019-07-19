////////////////////////////////////////
//////////////////Power/////////////////
////////////////////////////////////////

/datum/design/basic_cell
	name = "Standard Microfusion Cell"
	desc = "A Microfusion power cell that holds 1000 units of energy."
	id = "basic_cell"
	req_tech = list("powerstorage" = 1)
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 1500, MAT_GLASS = 1500)
	construction_time=30
	build_path = /obj/item/weapon/stock_parts/cell
	category = list("Misc","Power Designs","Machinery","initial")

/datum/design/high_cell
	name = "Improved Capacity Microfusion Cell"
	desc = "An improved capacity Microfusion power cell that holds 2250 units of energy."
	id = "high_cell"
	req_tech = list("powerstorage" = 3, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE | MECHFAB
	materials = list(MAT_METAL = 30000, MAT_GLASS = 30000)
	construction_time=30
	build_path = /obj/item/weapon/stock_parts/cell/high
	category = list("Misc","Power Designs","Machinery")

/datum/design/super_cell
	name = "Super-Capacity Microfusion Cell"
	desc = "A significantly improved capacity Microfusion cell that holds 4000 units of energy."
	id = "super_cell"
	req_tech = list("powerstorage" = 5, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE | MECHFAB
	materials = list(MAT_METAL = 15000, MAT_GLASS = 15000, MAT_GOLD = 1000, MAT_SILVER = 1000, MAT_URANIUM = 500)
	construction_time=30
	build_path = /obj/item/weapon/stock_parts/cell/super
	category = list("Misc","Power Designs")

/datum/design/hyper_cell
	name = "Hyper-Capacity Microfusion Cell"
	desc = "An even more significantly improved capacity Microfusion cell that holds 6000 units of energy."
	id = "hyper_cell"
	req_tech = list("powerstorage" = 6, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE | MECHFAB
	materials = list(MAT_METAL = 10000, MAT_GLASS = 10000, MAT_GOLD = 10000, MAT_SILVER = 10000, MAT_URANIUM = 4000)
	construction_time=30
	build_path = /obj/item/weapon/stock_parts/cell/hyper
	category = list("Misc","Power Designs")

/datum/design/bluespace_cell
	name = "Quantum Microfusion Cell"
	desc = "A self-sustaining microfusion reaction contained within a quantum bubble, you don't understand how it works. It holds functionally infinite energy. Shame they didn't have this back in 2077."
	id = "bluespace_cell"
	req_tech = list("powerstorage" = 8, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE | MECHFAB
	materials = list(MAT_METAL = 2000, MAT_GLASS = 2000, MAT_SILVER = 30000, MAT_GOLD = 30000, MAT_DIAMOND = 10000, MAT_URANIUM = 20000)
	construction_time=30
	build_path = /obj/item/weapon/stock_parts/cell/bluespace
	category = list("Misc","Power Designs")


/datum/design/light_replacer
	name = "Light Replacer"
	desc = "A device to automatically replace lights. Refill with working lightbulbs."
	id = "light_replacer"
	req_tech = list("magnets" = 3, "engineering" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 1500, MAT_SILVER = 150, MAT_GLASS = 3000)
	build_path = /obj/item/device/lightreplacer
	category = list("Power Designs")

/datum/design/board/pacman
	name = "Machine Design (PACMAN-type Generator Board)"
	desc = "The circuit board that for a PACMAN-type portable generator."
	id = "pacman"
	req_tech = list("programming" = 2, "plasmatech" = 3, "powerstorage" = 3, "engineering" = 3)
	build_path = /obj/item/weapon/circuitboard/machine/pacman
	category = list("Engineering Machinery")

/datum/design/board/pacman/super
	name = "Machine Design (SUPERPACMAN-type Generator Board)"
	desc = "The circuit board that for a SUPERPACMAN-type portable generator."
	id = "superpacman"
	req_tech = list("programming" = 3, "powerstorage" = 4, "engineering" = 4)
	build_path = /obj/item/weapon/circuitboard/machine/pacman/super

/datum/design/board/pacman/mrs
	name = "Machine Design (MRSPACMAN-type Generator Board)"
	desc = "The circuit board that for a MRSPACMAN-type portable generator."
	id = "mrspacman"
	req_tech = list("programming" = 3, "powerstorage" = 5, "engineering" = 5, "plasmatech" = 4)
	build_path = /obj/item/weapon/circuitboard/machine/pacman/mrs
