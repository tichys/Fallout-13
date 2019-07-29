////////////////////////////////////////
//////////////MISC Boards///////////////
////////////////////////////////////////

/datum/design/board/smes
	name = "Machine Design (SMES Board)"
	desc = "The circuit board for a SMES."
	id = "smes"
	req_tech = list("materials" = 4, "powerstorage" = 11, "engineering" = 7)
	build_path = /obj/item/weapon/circuitboard/machine/smes
	category = list ("Machinery")

/datum/design/board/turbine_computer
	name = "Computer Design (Power Turbine Console Board)"
	desc = "The circuit board for a power turbine console."
	id = "power_turbine_console"
	req_tech = list("materials" = 2, "powerstorage" = 5, "engineering" = 6)
	build_path = /obj/item/weapon/circuitboard/computer/turbine_computer
	category = list ("Machinery")

/datum/design/board/power_compressor
	name = "Machine Design (Gas Compressor Board)"
	desc = "The circuit board for a power compressor."
	id = "power_compressor"
	req_tech = list("materials" = 3, "powerstorage" = 1, "engineering" = 8)
	build_path = /obj/item/weapon/circuitboard/machine/power_compressor
	category = list ("Machinery")

/datum/design/board/power_turbine
	name = "Machine Design (Gas Turbine Board)"
	desc = "The circuit board for a power turbine."
	id = "power_turbine"
	req_tech = list("materials" = 3, "powerstorage" = 1, "engineering" = 8)
	build_path = /obj/item/weapon/circuitboard/machine/power_turbine
	category = list ("Machinery")

/datum/design/board/thermomachine
	name = "Machine Design (Freezer/Heater Board)"
	desc = "The circuit board for a freezer/heater."
	id = "thermomachine"
	req_tech = list("materials" = 8, "powerstorage" = 9, "engineering" = 12)
	build_path = /obj/item/weapon/circuitboard/machine/thermomachine
	category = list ("Machinery")

/datum/design/board/space_heater
	name = "Machine Design (Heater Board)"
	desc = "The circuit board for a heater."
	id = "space_heater"
	req_tech = list("materials" = 1, "powerstorage" = 3, "engineering" = 2)
	build_path = /obj/item/weapon/circuitboard/machine/space_heater
	category = list ("Machinery")

/datum/design/board/teleport_station
	name = "Machine Design (Teleportation Station Board)"
	desc = "The circuit board for a teleportation station."
	id = "tele_station"
	req_tech = list("engineering" = 1, "powerstorage" = 1, "materials" = 1, "abductor" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/teleporter_station
	category = list ("Machinery")

/datum/design/board/teleport_hub
	name = "Machine Design (Teleportation Hub Board)"
	desc = "The circuit board for a teleportation hub."
	id = "tele_hub"
	req_tech = list("engineering" = 1, "powerstorage" = 1, "materials" = 1, "abductor" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/teleporter_hub
	category = list ("Machinery")

/datum/design/board/sleeper
	name = "Machine Design (Sleeper Board)"
	desc = "The circuit board for a sleeper."
	id = "sleeper"
	req_tech = list("powerstorage" = 5, "biotech" = 6, "engineering" = 3)
	build_path = /obj/item/weapon/circuitboard/machine/sleeper
	category = list ("Machinery")

/datum/design/board/cryotube
	name = "Machine Design (Cryotube Board)"
	desc = "The circuit board for a cryotube."
	id = "cryotube"
	req_tech = list("powerstorage" = 5, "biotech" = 9, "engineering" = 5)
	build_path = /obj/item/weapon/circuitboard/machine/cryo_tube
	category = list ("Machinery")

/datum/design/board/chem_dispenser
	name = "Machine Design (Portable Chem Dispenser Board)"
	desc = "The circuit board for a portable chem dispenser."
	id = "chem_dispenser"
	req_tech = list("powerstorage" = 1, "biotech" = 3, "engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/chem_dispenser
	category = list ("Machinery")

/datum/design/board/chem_master
	name = "Machine Design (Chem Master Board)"
	desc = "The circuit board for a Chem Master 3000."
	id = "chem_master"
	req_tech = list("powerstorage" = 1, "biotech" = 3, "engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/chem_master
	category = list ("Machinery")

/datum/design/board/chem_heater
	name = "Machine Design (Chemical Heater Board)"
	desc = "The circuit board for a chemical heater."
	id = "chem_heater"
	req_tech = list("powerstorage" = 1, "biotech" = 3, "engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/chem_heater
	category = list ("Machinery")

/datum/design/board/clonecontrol
	name = "Computer Design (Cloning Machine Console)"
	desc = "Allows for the construction of circuit boards used to build a new Cloning Machine console."
	id = "clonecontrol"
	req_tech = list("powerstorage" = 1, "biotech" = 1, "abductor" = 1)
	build_path = /obj/item/weapon/circuitboard/computer/cloning
	category = list("Machinery")

/datum/design/board/clonepod
	name = "Machine Design (Clone Pod)"
	desc = "Allows for the construction of circuit boards used to build a Cloning Pod."
	id = "clonepod"
	req_tech = list("powerstorage" = 1, "biotech" = 1, "abductor" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/clonepod
	category = list("Machinery")

/datum/design/board/clonescanner
	name = "Machine Design (Cloning Scanner)"
	desc = "Allows for the construction of circuit boards used to build a Cloning Scanner."
	id = "clonescanner"
	req_tech = list("powerstorage" = 1, "biotech" = 1, "abductor" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/clonescanner
	category = list("Machinery")

/datum/design/board/biogenerator
	name = "Machine Design (Biogenerator Board)"
	desc = "The circuit board for a biogenerator."
	id = "biogenerator"
	req_tech = list("biotech" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/biogenerator
	category = list ("Machinery")

/datum/design/board/hydroponics
	name = "Machine Design (Hydroponics Tray Board)"
	desc = "The circuit board for a hydroponics tray."
	id = "hydro_tray"
	req_tech = list("biotech" = 3)
	build_path = /obj/item/weapon/circuitboard/machine/hydroponics
	category = list ("Machinery")

/datum/design/board/destructive_analyzer
	name = "Machine Design (Destructive Analyzer Board)"
	desc = "The circuit board for a destructive analyzer."
	id = "destructive_analyzer"
	req_tech = list("powerstorage" = 1, "materials" = 1, "engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/destructive_analyzer
	category = list("Machinery")

/datum/design/board/protolathe
	name = "Machine Design (Protolathe Board)"
	desc = "The circuit board for a protolathe."
	id = "protolathe"
	req_tech = list("powerstorage" = 1, "materials" = 1, "engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/protolathe
	category = list("Machinery")

/datum/design/board/circuit_imprinter
	name = "Machine Design (Circuit Imprinter Board)"
	desc = "The circuit board for a circuit imprinter."
	id = "circuit_imprinter"
	req_tech = list("powerstorage" = 1, "materials" = 1, "engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/circuit_imprinter
	category = list("Machinery")

/datum/design/board/cyborgrecharger
	name = "Machine Design (Robot Recharger Board)"
	desc = "The circuit board for a Robot Recharger."
	id = "cyborgrecharger"
	req_tech = list("powerstorage" = 5, "engineering" = 3)
	build_path = /obj/item/weapon/circuitboard/machine/cyborgrecharger
	category = list("Research Machinery")

/datum/design/board/microwave
	name = "Machine Design (Microwave Board)"
	desc = "The circuit board for a microwave."
	id = "microwave"
	req_tech = list("engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/microwave
	category = list ("Machinery")

/datum/design/board/gibber
	name = "Machine Design (Gibber Board)"
	desc = "The circuit board for a gibber."
	id = "gibber"
	req_tech = list("engineering" = 2)
	build_path = /obj/item/weapon/circuitboard/machine/gibber
	category = list ("Machinery")

/datum/design/board/smartfridge
	name = "Machine Design (Smartfridge Board)"
	desc = "The circuit board for a smartfridge."
	id = "smartfridge"
	req_tech = list("engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/smartfridge
	category = list ("Machinery")

/datum/design/board/seed_extractor
	name = "Machine Design (Seed Extractor Board)"
	desc = "The circuit board for a seed extractor."
	id = "seed_extractor"
	req_tech = list("biotech" = 3)
	build_path = /obj/item/weapon/circuitboard/machine/seed_extractor
	category = list ("Machinery")

/datum/design/board/recycler
	name = "Machine Design (Recycler Board)"
	desc = "The circuit board for a recycler."
	id = "recycler"
	req_tech = list("materials" = 5, "engineering" = 3)
	build_path = /obj/item/weapon/circuitboard/machine/recycler
	category = list ("Machinery")

/datum/design/board/autolathe
	name = "Machine Design (Autolathe Board)"
	desc = "The circuit board for an autolathe."
	id = "autolathe"
	req_tech = list("engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/autolathe
	category = list ("Machinery")

/datum/design/board/recharger
	name = "Machine Design (Weapon Recharger Board)"
	desc = "The circuit board for a Weapon Recharger."
	id = "recharger"
	req_tech = list("powerstorage" = 6, "engineering" = 3)
	materials = list(MAT_GLASS = 1000, MAT_GOLD = 100)
	build_path = /obj/item/weapon/circuitboard/machine/recharger
	category = list("Machinery")

/datum/design/board/vendor
	name = "Machine Design (Vendomat Board)"
	desc = "The circuit board for a Vendomat."
	id = "vendor"
	req_tech = list("engineering" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/vendor
	category = list ("Machinery")

/datum/design/board/plantgenes
	name = "Machine Design (Plant DNA Manipulator Board)"
	desc = "The circuit board for a plant DNA manipulator."
	id = "plantgenes"
	req_tech = list("engineering" = 4, "biotech" = 7)
	build_path = /obj/item/weapon/circuitboard/machine/plantgenes
	category = list ("Machinery")

/datum/design/board/limbgrower
	name = "Machine Design (Limb Grower Board)"
	desc = "The circuit board for a limb grower."
	id = "limbgrower"
	req_tech = list("engineering" = 1, "biotech" = 1, "abductor" = 1)
	build_path = /obj/item/weapon/circuitboard/machine/limbgrower
	category = list("Machinery")
