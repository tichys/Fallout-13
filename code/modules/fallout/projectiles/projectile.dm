//Fallout 13 plasma directory

/obj/item/projectile/beam/plasma
	name = "plasma"
	damage = 55
	irradiate = 15
	armour_penetration = 10
	icon_state = "plasma"
	icon = 'icons/fallout/objects/guns/projectiles.dmi'
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/plasma
	light_color = LIGHT_COLOR_GREEN
	pass_flags = PASSTABLE | PASSGRILLE

/obj/item/projectile/beam/plasma/turbo
	name = "turbo plasma"
	damage = 55
	irradiate = 15
	armour_penetration = 20
