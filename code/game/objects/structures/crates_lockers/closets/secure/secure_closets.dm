/obj/structure/closet/secure_closet
	name = "secure locker"
	desc = "It's a card-locked storage unit."
	locked = 1
	icon_state = "secure"
	obj_integrity = 250
	max_integrity = 250
	armor = list(melee = 30, bullet = 50, laser = 50, energy = 100, bomb = 0, bio = 0, rad = 0, fire = 80, acid = 80)
	secure = 1

/obj/structure/closet/secure_closet/run_obj_armor(damage_amount, damage_type, damage_flag = 0, attack_dir)
	if(damage_flag == "melee" && damage_amount < 20)
		return 0
	. = ..()
	
	
/obj/structure/closet/enclave_closet
	name = "Enclave closet"
	desc = "It's a holotag locked closet."
	locked = 1
	icon_state = "secure"
	req_access = list(70)
	obj_integrity = 600
	max_integrity = 600
	armor = list(melee = 95, bullet = 95, laser = 95, energy = 95, bomb = 0, bio = 0, rad = 0, fire = 95, acid = 95)
	secure = 1
	
		
/obj/structure/closet/brotherhood_closet
	name = "Brotherhood closet"
	desc = "It's a holotag locked closet."
	locked = 1
	icon_state = "secure"
	req_access = list(69)
	obj_integrity = 600
	max_integrity = 600
	armor = list(melee = 95, bullet = 95, laser = 95, energy = 95, bomb = 0, bio = 0, rad = 0, fire = 95, acid = 95)
	secure = 1
