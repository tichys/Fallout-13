///////////////////Computer Boards///////////////////////////////////

/datum/design/board
	name = "Computer Design (Battle Arcade Machine)"
	desc = "Allows for the construction of circuit boards used to build a new arcade machine."
	id = "arcade_battle"
	req_tech = list("engineering" = 1)
	build_type = IMPRINTER
	materials = list(MAT_GLASS = 1000)
	reagents_list = list("sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/computer/arcade/battle
	category = list("Computer Boards")

/datum/design/board/orion_trail
	name = "Computer Design (Orion Trail Arcade Machine)"
	desc = "Allows for the construction of circuit boards used to build a new Orion Trail machine."
	id = "arcade_orion"
	req_tech = list("engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/computer/arcade/orion_trail
	category = list("Computer Boards")

/datum/design/board/seccamera
	name = "Computer Design (Security)"
	desc = "Allows for the construction of circuit boards used to build security camera computers."
	id = "seccamera"
	req_tech = list("engineering" = 2, "materials" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/security
	category = list("Computer Boards")

/datum/design/board/operating
	name = "Computer Design (Operating Computer)"
	desc = "Allows for the construction of circuit boards used to build an operating computer console."
	id = "operating"
	req_tech = list("engineering" = 2, "biotech" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/operating
	category = list("Computer Boards")

/datum/design/board/pandemic
	name = "Computer Design (PanD.E.M.I.C. 2200)"
	desc = "Allows for the construction of circuit boards used to build a PanD.E.M.I.C. 2200 console."
	id = "pandemic"
	req_tech = list("engineering" = 3, "biotech" = 3)
	build_path = /obj/item/weapon/circuitboard/computer/pandemic
	category = list("Computer Boards")

/datum/design/board/scan_console
	name = "Computer Design (DNA Machine)"
	desc = "Allows for the construction of circuit boards used to build a new DNA scanning console."
	id = "scan_console"
	req_tech = list("engineering" = 2, "biotech" = 2)
	build_path = /obj/item/weapon/circuitboard/computer/scan_consolenew
	category = list("Computer Boards")

/datum/design/board/libraryconsole
	name = "Computer Design (Library Console)"
	desc = "Allows for the construction of circuit boards used to build a new library console."
	id = "libraryconsole"
	req_tech = list("engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/computer/libraryconsole
	category = list("Computer Boards")
