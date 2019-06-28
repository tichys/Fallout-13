//Fallout 13 energy guns ammo directory

/obj/item/ammo_casing/energy/f13plasma
	projectile_type = /obj/item/projectile/beam/plasma
	delay = 2
	randomspread = 1
	variance = 5
	select_name = "kill"
	e_cost = 50
	firing_effect_type = /obj/effect/overlay/temp/dir_setting/firing_effect/plasma

/obj/item/ammo_casing/energy/f13plasma/turbo
	projectile_type = /obj/item/projectile/beam/plasma/turbo
	delay = 5
	e_cost = 50 //75 is far too punishing on the plasma caster, it reduces it to literally like 9 shots.

/obj/item/ammo_casing/energy/f13plasma/tri
	delay = 0
	pellets = 3
	variance = 25
	e_cost = 100 //this does not apply per pellet for some reason, an increased cost should mean that you cant just fire it 60 times per magazine. It's a really fucking lethal weapon without being spammable too.
	randomspread = 0

/obj/item/ammo_casing/energy/laser/rcw
	delay = 1
	e_cost = 40 //5 shots per burst and each shot uses 40 e_cost. at 200 energy per burst and 1000 energy per power cell this results in total mag size of 5 bursts/25 shots before requiring a new cell
	projectile_type = /obj/item/projectile/beam/laser/rcw
	randomspread = 1
	variance = 8

/obj/item/projectile/beam/laser/rcw
	damage = 10

/obj/item/ammo_casing/energy/laser/rifle
	delay = 4
	e_cost = 25 //energy weapons use less power than plasma weapons, reduction here to bring it in line with AER13.
	randomspread = 1
	variance = 4

/obj/item/ammo_casing/energy/laser/rifle/aer13
	delay = 2
	e_cost = 25

/obj/item/ammo_casing/energy/laser/rifle/tri
	delay = 0
	pellets = 3
	variance = 25
	e_cost = 100 //same deal as multiplas above, doesnt apply per pellet so has been increased to prevent near infinite ammo/solo 2 deathclaws with 1 magazine.
	randomspread = 0

/obj/item/ammo_casing/energy/laser/laer
	delay = 2
	e_cost = 50
	randomspread = 1
	projectile_type = /obj/item/projectile/beam/laser/laerbolt
	variance = 4

/obj/item/ammo_casing/energy/laser/gauss2mm
	delay = 2
	e_cost = 2250
	randomspread = 0
	projectile_type = /obj/item/projectile/beam/laser/gauss2mm
	variance = 4
