//Fallout 13 wasteland medicine directory

/obj/item/weapon/reagent_containers/pill/patch/healingpowder
	name = "healing powder"
	desc = "A foul-smelling primitive healing medicine.<br>It is widespread in the wasteland due to easy production - all kinds of Wastelanders from Settlers to Mercenaries use it to heal minor injuries.<br>Soldiers of the Legion use healing powder as their primary source of medicine and healing, since the Legion bans the use of other chems, such as stimpaks."
	list_reagents = list("omnizine" = 15, "salglu_solution" = 10, "morphine" = 4.5, "musclestimulant" = 5) // added morphine to the mix to prevent stacking a bunch of healing powders together, and to add the drowsiness drawback from FO2.
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "heal_powder"
	item_state = "bandaid"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/stimpak
	name = "stimpak"
	desc = "A stimpak, or stimulation delivery package, is a type of hand-held medication used for healing the body. Deals minor toxin damage due to contaminants from exposure to the elements."
	list_reagents = list("styptic_powder" = 10, "silver_sulfadiazine" = 10, "salglu_solution" = 10, "aranesp" = 1.2)
	icon = 'icons/fallout/objects/medicine/syringe.dmi'
	icon_state = "stim_15"
	item_state = "syringe_15"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/supstimpak
	name = "super stimpak"
	desc = "The super version of the Stimpak has an additional vial containing more powerful drugs than the basic model. Can cause diziness if too many super stimpaks are used in a short timespan."
	list_reagents = list("styptic_powder" = 15, "silver_sulfadiazine" = 15, "salglu_solution" = 10, "omnizine" = 5, "mine_salve" = 5) // miners salve causes some hud distortion, and at higher units increases this exponetnially, should add a drawback so people dont just pop superstimms constantly
	icon = 'icons/fallout/objects/medicine/syringe.dmi'
	icon_state = "superstim_15"
	item_state = "syringe_15"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/medx
	name = "med-x"
	desc = "Med-X is a potent opiate analgesic that binds to opioid receptors in the brain and central nervous system, reducing the perception of pain as well as the emotional response to pain.<br>Essentially, it is a painkiller delivered via hypodermic needle. Allows a user to walk on despite horrific wounds."
	list_reagents = list("morphine" = 5, "musclestimulant" = 25)
	icon = 'icons/fallout/objects/medicine/syringe.dmi'
	icon_state = "medx_15"
	item_state = "syringe_15"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/radaway
	name = "radaway"
	desc = "RadAway is an intravenous chemical solution that bonds with irradiated particles and passes them through the body's system. It takes some time to work, and is also a potent diuretic."
	list_reagents = list("charcoal" = 50)
	icon = 'icons/fallout/objects/medicine/bloodpack.dmi'
	icon_state = "radaway"
	item_state = "syringe_15"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/jet
	name = "jet"
	desc = "Jet is an extremely addictive chem, a single hit is enough to form an addiction in most people. It significantly boosts a user's metabolism, allowing for bursts of increased speed and a quicker recovery time from both fatigue and stuns."
	list_reagents = list("hyperepinephrine" = 12, "crank" = 12)
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "jet"
	item_state = "bandaid"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/psycho
	name = "psycho"
	desc = "Psycho boosts pain tolerance and strength to incredible levels, preventing wounds from slowing down the user. It also provides a mixture of stimulants which promote rapid wound healing."
	list_reagents = list("epinephrine" = 9, "inacusiate" = 8, "oculine" = 8, "psychocorazine" = 25)
	icon = 'icons/fallout/objects/medicine/syringe.dmi'
	icon_state = "psycho"
	item_state = "syringe_15"
	self_weight = 0.01
	
/obj/item/weapon/reagent_containers/pill/patch/radx
	name = "rad-x"
	desc = "Rad-X is an anti-radiation chemical that can significantly reduce the danger of irradiated areas."
	list_reagents = list("potass_iodide" = 30, "pen_acid" = 8)
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "radx"
	item_state = "bandaid"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/turbo
	name = "turbo"
	desc = "Turbo provides a speed boost to the user, though mixing this many chems can't be good for your health."
	list_reagents = list("hyperepinephrine" = 16, "crank" = 9)
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "turbo"
	item_state = "turbo"
	self_weight = 0.01
