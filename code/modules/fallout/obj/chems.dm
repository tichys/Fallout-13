//Fallout 13 wasteland medicine directory

/obj/item/weapon/reagent_containers/pill/patch/healingpowder
	name = "healing powder"
	desc = "A foul-smelling primitive healing medicine.<br>It is widespread in the wasteland due to easy production - all kinds of Wastelanders from Settlers to Mercenaries use it to heal minor injuries.<br>Soldiers of the Legion use healing powder as their primary source of medicine and healing, since the Legion bans the use of other chems, such as stimpaks."
	list_reagents = list("omnizine" = 15, "salglu_solution" = 10) // slight reduction in omnizine content as it metabolizes very slowly, 15u can last like 10 minutes.
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "heal_powder"
	item_state = "bandaid"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/stimpak
	name = "stimpak"
	desc = "A stimpak, or stimulation delivery package, is a type of hand-held medication used for healing the body. This item consists of a syringe for containing and delivering the medication and a gauge for measuring the status of the stimpak's contents. When the medicine is injected, it provides immediate healing of the body's minor wounds."
	list_reagents = list("styptic_powder" = 20, "silver_sulfadiazine" = 20, "salglu_solution" = 15)
	icon = 'icons/fallout/objects/medicine/syringe.dmi'
	icon_state = "stim_15"
	item_state = "syringe_15"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/supstimpak
	name = "super stimpak"
	desc = "The super version of the Stimpak has an additional vial containing more powerful drugs than the basic model, as well as a leather belt to strap the needle to the injured limb." // removed morphine from both this and regular stimpacks, they are purely for healing wounds - painkilling is done by med-x.
	list_reagents = list("styptic_powder" = 40, "silver_sulfadiazine" = 40, "salglu_solution" = 30)
	icon = 'icons/fallout/objects/medicine/syringe.dmi'
	icon_state = "superstim_15"
	item_state = "syringe_15"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/medx
	name = "med-x"
	desc = "Med-X is a potent opiate analgesic that binds to opioid receptors in the brain and central nervous system, reducing the perception of pain as well as the emotional response to pain.<br>Essentially, it is a painkiller delivered via hypodermic needle."
	list_reagents = list("muscle stimulant" = 40, "morphine" = 5)
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
	desc = "Jet is a highly addictive drug first synthesized by Myron. It is extracted from the fumes of brahmin feces and administered via an inhaler."
	list_reagents = list("stimulants" = 6, "crank" = 6, "krokodil" = 6) // reduced crank component as 10u caused instant addiction, meaning one hit was a guaranteed hook.
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "jet"
	item_state = "bandaid"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/psycho
	name = "psycho"
	desc = "Psycho will increase damage resistance, allowing subjects to survive hits more easily."
	list_reagents = list("epinephrine" = 15, "inacusiate" = 10, "oculine" = 10, "muscle stimulant" = 10) //increasing this just slightly to make psycho more worth using.
	icon = 'icons/fallout/objects/medicine/syringe.dmi'
	icon_state = "psycho"
	item_state = "syringe_15"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/radx
	name = "rad-x"
	desc = "Rad-X is an anti-radiation chemical that can significantly reduce the danger of irradiated areas."
	list_reagents = list("potass_iodide" = 30, "pen_acid" = 9)
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "radx"
	item_state = "bandaid"
	self_weight = 0.01

/obj/item/weapon/reagent_containers/pill/patch/turbo
	name = "turbo"
	desc = "Turbo appears to be an inhaler of Jet hastily duct-taped to an aerosol can of HairStylez-brand hair spray. Turbo causes brief slowdown of the user's surroundings (time goes at about 35% of its original speed), including everything from enemy movements to projectile speeds (the user's own projectile speed included) to the duration of the drug itself. However, the user does not experience the slowdown - their own movement speed and fire rate will remain the same."
	list_reagents = list("stimulants" = 5, "methamphetamine" = 5, "crank" = 5) // stims & meth filter out slowly due to server tickrate, this much should last for roughly 4 minutes.
	icon = 'icons/fallout/objects/medicine/chemical.dmi'
	icon_state = "turbo"
	item_state = "turbo"
	self_weight = 0.01
