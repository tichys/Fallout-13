/////////////////////////////////////////
//////////Cybernetic Implants////////////
/////////////////////////////////////////

/datum/design/cyberimp_welding
	name = "Welding Shield implant"
	desc = "These reactive micro-shields will protect you from welders and flashes without obscuring your vision."
	id = "ci-welding"
	req_tech = list("biotech" = 10)
	build_type = PROTOLATHE
	construction_time = 40
	materials = list(MAT_METAL = 60000, MAT_GLASS = 30000, MAT_DIAMOND = 12000)
	build_path = /obj/item/organ/cyberimp/eyes/shield
	category = list("Augmentation")

/datum/design/cyberimp_breather
	name = "Breathing Tube implant"
	desc = "This simple implant adds an internals connector to your back, allowing you to use internals without a mask and protecting you from being choked."
	id = "ci-breather"
	req_tech = list("biotech" = 2)
	build_type = PROTOLATHE
	construction_time = 35
	materials = list(MAT_METAL = 2000, MAT_GLASS = 18000, MAT_DIAMOND = 2000)
	build_path = /obj/item/organ/cyberimp/mouth/breathing_tube
	category = list("Augmentation")

/datum/design/cyberimp_toolset
	name = "Toolset Arm implant"
	desc = "A stripped-down version of engineering cyborg toolset, designed to be installed on subject's arm."
	id = "ci-toolset"
	req_tech = list("biotech" = 11)
	build_type = PROTOLATHE
	materials = list (MAT_METAL = 200000, MAT_SILVER = 18000, MAT_URANIUM = 20000)
	construction_time = 200
	build_path = /obj/item/organ/cyberimp/arm/toolset
	category = list("Augmentation")

/datum/design/cyberimp_antidrop
	name = "Anti-Drop implant"
	desc = "This cybernetic brain implant will allow you to force your hand muscles to contract, preventing item dropping. Twitch ear to toggle."
	id = "ci-antidrop"
	req_tech = list("biotech" = 8)
	build_type = PROTOLATHE
	construction_time = 60
	materials = list(MAT_GOLD = 6000, MAT_SILVER = 4000, MAT_URANIUM = 45000)
	build_path = /obj/item/organ/cyberimp/brain/anti_drop
	category = list("Augmentation")

/datum/design/cyberimp_antistun
	name = "CNS Rebooter implant"
	desc = "This implant will automatically give you back control over your central nervous system, reducing downtime when stunned."
	id = "ci-antistun"
	req_tech = list("biotech" = 7)
	build_type = PROTOLATHE
	construction_time = 60
	materials = list(MAT_GOLD = 8000, MAT_SILVER = 6000, MAT_URANIUM = 60000)
	build_path = /obj/item/organ/cyberimp/brain/anti_stun
	category = list("Augmentation")

/datum/design/cyberimp_nutriment
	name = "Nutriment pump implant"
	desc = "This implant will synthesize and pump into your bloodstream a small amount of nutriment when you are starving."
	id = "ci-nutriment"
	req_tech = list("biotech" = 6)
	build_type = PROTOLATHE
	construction_time = 40
	materials = list(MAT_GOLD = 16000, MAT_SILVER = 12000, MAT_URANIUM = 2000)
	build_path = /obj/item/organ/cyberimp/chest/nutriment
	category = list("Augmentation")

/datum/design/cyberimp_nutriment_plus
	name = "Nutriment pump implant PLUS"
	desc = "This implant will synthesize and pump into your bloodstream a small amount of nutriment when you are hungry."
	id = "ci-nutrimentplus"
	req_tech = list("biotech" = 9)
	build_type = PROTOLATHE
	construction_time = 50
	materials = list(MAT_METAL = 2000, MAT_GLASS = 2000, MAT_GOLD = 40000, MAT_SILVER = 20000, MAT_URANIUM = 4000)
	build_path = /obj/item/organ/cyberimp/chest/nutriment/plus
	category = list("Augmentation")

/datum/design/cyberimp_reviver
	name = "Reviver implant"
	desc = "This implant will attempt to revive you if you lose consciousness. For the faint of heart!"
	id = "ci-reviver"
	req_tech = list("biotech" = 13)
	build_type = PROTOLATHE
	construction_time = 60
	materials = list(MAT_METAL = 2000, MAT_DIAMOND = 2000, MAT_GOLD = 60000, MAT_SILVER = 40000, MAT_URANIUM = 30000)
	build_path = /obj/item/organ/cyberimp/chest/reviver
	category = list("Augmentation")

/////////////////////////////////////////
////////////Regular Implants/////////////
/////////////////////////////////////////

/datum/design/implanter_adrenaline
	name = "Adrenaline Implanter"
	desc = "A glass case containing an implant. This one contains three shots of adrenaline which can be accessed through biting of a specific point on the lower lip."
	id = "implant_storage"
	req_tech = list("biotech" = 11)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 5000, MAT_GOLD = 65000, MAT_URANIUM = 18000, MAT_DIAMOND = 69500)
	build_path = /obj/item/weapon/implanter/adrenalin
	category = list("Augmentation")

/datum/design/implanter_storage
	name = "Cavity Storage Implanter"
	desc = "A sterile automatic implant injector. This one is loaded with a cavity storage implant, allowing you to store two items in your torso."
	id = "implanter"
	req_tech = list("biotech" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 600, MAT_GLASS = 200, MAT_URANIUM = 600)
	build_path = /obj/item/weapon/implanter/storage
	category = list("Augmentation")
