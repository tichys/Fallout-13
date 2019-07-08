/*
	Quest contain information about items needs to complete them.
	And reward in caps
*/
/datum/bounty_quest
	var/name = "Default Quest Name"
	var/desc = "Default Quest Description"
	var/employer = "Default Employer"

	/* This items needs to complete this quest */
	var/list/target_items = list()

	/* How many caps will spawned after quest complete */
	var/caps_reward = 10

	/* Will show to player, when quest is complete */
	var/end_message = "*Beep* Bounty requirements fulfilled. Payment dispensing.."

	var/need_message = "Need some items"

	var/employer_icon_folder = "icons/bounty_employers/"

	var/employer_icon = "employermerc.png"

/datum/bounty_quest/proc/ItsATarget(var/target)
	for(var/target_type in target_items)
		if(istype(target, target_type))
			return 1
	return 0

/datum/bounty_quest/proc/GetIconWithPath()
	return text2path("[employer_icon_folder][employer_icon]")

/datum/bounty_quest/faction/wasteland/qst_0
	name = "Wasteland Bounties"
	desc = "A list of bounties posted across the Texas wastes, automated by this old RobCo Messaging system."
	employer = "Jonah Orion, Red Water Caravans"
	employer_icon = "employermerc.png"
	need_message = "Ghouls keep attacking my caravans. I need you to kill ten of them, clear the wastes out a bit. Skin the face of each one you kill and bring ten of those back here as proof"
	end_message = "Superb job, thanks for that. Here's your caps"
	target_items = list(/obj/item/trash/f13/ghoulface = 10)
	caps_reward = 800

/datum/bounty_quest/faction/wasteland/qst_1
	employer = "Jonah Orion, Red Water Caravans"
	need_message = "A client of mine is looking for raw nuclear material. I need you to find and bring back one of those sealed pre-war waste barrels. Bring it to the pod and I'll throw four thousand caps your way"
	end_message = "Superb job, thanks for that. Here's your caps"
	target_items = list(/obj/structure/reagent_dispensers/barrel/dangerous = 1)
	caps_reward = 4000

/datum/bounty_quest/faction/wasteland/qst_2
	employer = "George Miller, NCR Sharecropper Farming"
	need_message = "Goddamn molerats keep eating our crops. I need you to kill five of them. Bring back their tails as proof of the deed. I'll pay you two hundred and twenty five caps"
	end_message = "Thanks for that. Now I might be able to put some damn food on the table"
	target_items = list(/obj/item/trash/f13/molerattail = 5)
	caps_reward = 225

/datum/bounty_quest/faction/wasteland/qst_3
	employer = "Unknown 'Aspiring Doctor'"
	employer_icon = "employercannibal.png"
	need_message = "I need you to bring me a body. A human one. Just the whole thing. For... dissection and study! I'm a doctor, you know. Let's make the price... six hundred caps"
	end_message = "Mmhm, a prime cut. Thank you"
	target_items = list(/mob/living/carbon/human = 1)
	caps_reward = 600

/datum/bounty_quest/faction/wasteland/qst_4
	employer = "Hoi Chen, American"
	employer_icon = "employerpla.png"
	need_message = "Hello yes. I need gun, very American gun. You find for me, I pay you five hundred caps. It is called Colt Model 733. Find for me quickly, for Chin- Uncle Sam and Hotdogs. Yes"
	end_message = "Hohoho! Thank you for this. I will use very well on those uh... commies, yes"
	target_items = list(/obj/item/weapon/gun/ballistic/automatic/carbine = 1)
	caps_reward = 500

/datum/bounty_quest/faction/wasteland/qst_5
	employer = "New California Republic, Department of Wildlife Management"
	need_message = "The New California Republic is on the way into Texas and we need the help of locals willing to help clear the path for a more civilized world. Our advanced scouts spotted a large concentration of Deathclaws across the Texas wastes and want to thin the herd a bit. Kill three deathclaws and bring back their largest right-handed talons. We are offering a bounty of five thousand caps for this one"
	end_message = "The republic thanks you for your service."
	target_items = list(/obj/item/trash/f13/deathclawtalon = 3)
	caps_reward = 5000

/datum/bounty_quest/faction/wasteland/qst_6
	employer = "Caesar's Legion"
	need_message = "Caesar's Legion seeks the aid of locals willing to serve mighty Caesar. We seek the death of the NCR dogs in the area. Bring us three of their dogtags and we will give you eight hundred caps"
	end_message = "Victoria Caesaris. You have the Legion's thanks, profligate"
	target_items = list(/obj/item/weapon/card/id/ncr = 3)
	caps_reward = 800

/datum/bounty_quest/faction/wasteland/qst_7
	employer = "New California Republic, Department of War"
	need_message = "Legion slavers have been spotted in the area. They are a nasty bunch, raping and pillaging what they don't just kill. We're looking to thin their numbers a bit before the mainstay of the NCR army arrives and are enlisting locals to help. Bring us three of their unique belts and we'll pay a bounty of eight hundred caps"
	end_message = "You have the personal thanks of a great deal of fallen NCR soldiers for what you have done here today, thank you"
	target_items = list(/obj/item/weapon/storage/belt/legionbelt/ = 3)
	caps_reward = 800

/datum/bounty_quest/faction/wasteland/qst_8
	employer = "New Alamo"
	need_message = "We've got three Deathclaws in the mine next to our town to the north west, we're looking to enlist locals to help us clear this out before they ransack the town. We are offering a bounty of three thousand caps - it's all we can afford. Bring their right-paw large talons to us as proof, three total"
	end_message = "Thank you so much! Caps are in the slot below"
	target_items = list(/obj/item/trash/f13/deathclawtalon = 3)
	caps_reward = 3000

/datum/bounty_quest/faction/wasteland/qst_9
	employer = "Texas Wastes Bounty Board Management"
	need_message = "We're runing low on paper to print bounties. Bring us twenty sheets of paper and we'll pay you two hundred caps"
	end_message = "Good job, at least we won't run out of paper yet"
	target_items = list(/obj/item/weapon/paper = 20)
	caps_reward = 200

/datum/bounty_quest/faction/wasteland/qst_10
	employer = "New California Republic, Department of Agriculture"
	need_message = "The New California Republic is always expanding and this means we always have hungry mouths to feed. Bring us ten heads of corn and we'll pay one hundred and fifty caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/corn = 10)
	caps_reward = 150

/datum/bounty_quest/faction/wasteland/qst_11
	employer = "New California Republic, Department of Agriculture"
	need_message = "The New California Republic is always expanding and this means we always have hungry mouths to feed. We've had a food shortage and desperately need corn, bring us thirty heads of corn and we'll pay four hundred caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/corn = 30)
	caps_reward = 400

/datum/bounty_quest/faction/wasteland/qst_12
	employer = "New California Republic, Department of Agriculture"
	need_message = "The New California Republic is always expanding and this means we always have hungry mouths to feed. Bring us ten carrots and we'll pay 50 caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/carrot = 10)
	caps_reward = 50

/datum/bounty_quest/faction/wasteland/qst_13
	employer = "New California Republic, Department of Agriculture"
	need_message = "The New California Republic is always expanding and this means we always have hungry mouths to feed. We've had a food shortage and desperately need carrots, bring us thirty carrots and we'll pay two hundred caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/carrot = 30)
	caps_reward = 200

/datum/bounty_quest/faction/wasteland/qst_14
	employer = "Speed Slashin' Strikerz"
	need_message = "Hey, truce for now. How's this damn thing work? Oh. Like that. OK so, me and the boys are running low on that good shit. We're looking for some grown replacements, bring us ten cannabis leaves and we'll pay three hundred caps"
	end_message = "WOOOO! You're the best. Caps are in the slot thingy"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/cannabis = 10)
	caps_reward = 300

/datum/bounty_quest/faction/wasteland/qst_15
	employer = "Speed Slashin' Strikerz"
	need_message = "We're running real damn low on those cannabis leaves, they're addictive as hell. Bring us thirty leaves and we'll pay ya one thousand caps"
	end_message = "Hell yeah, let's roll this shit up boys. Caps are below"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/cannabis = 30)
	caps_reward = 1000

/datum/bounty_quest/faction/wasteland/qst_16
	employer = "Snake Vargas, N.C.R RANGERS"
	need_message = "Running low on chewin' 'bacco. Bring me ten tobacco leaves and I'll pay ya' three hundred caps"
	end_message = "You got my thanks, waster. Keep your eyes on that crimson horizon, maybe you'll catch a glimpse of me fragging Legion scum"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/tobacco = 10)
	caps_reward = 300

/datum/bounty_quest/faction/wasteland/qst_17
	employer = "Hershel Greene"
	need_message = "I've got goddamn wolves moving in on my church. I need someone to clear them out. Bring me eight wolf tails as proof of the deed. I'll pay two hundred and seventy five caps"
	end_message = "Thank you, wastelander. Walk with God"
	target_items = list(/obj/item/trash/f13/wolftail = 8)
	caps_reward = 275

/datum/bounty_quest/faction/wasteland/qst_18
	employer = "PSYCHO GIBBINS"
	need_message = "I NEED MY FIX MAN, THREE HUNDRED CAPS FOR A HIT OF PSYCHO, HIT ME UP"
	end_message = "WOOOOOOOOOOOOOOOOOOOOOOO!!!"
	target_items = list(/obj/item/weapon/reagent_containers/pill/patch/psycho = 1)
	caps_reward = 300

/datum/bounty_quest/faction/wasteland/qst_19
	employer = "New California Republic, Department of Wasteland Anatomy"
	need_message = "We've spotted some rad scorpions native to Texas, you'll spot them by their unique black colouration. Bring us one whole black radscorpion body, we'll pay five hundred caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/mob/living/simple_animal/hostile/rad_scorpion/black = 1)
	caps_reward = 500
	
/datum/bounty_quest/faction/wasteland/qst_20
	employer = "New California Republic, Department of Wasteland Anatomy"
	need_message = "We're looking to see if there's any difference between Texan deathclaws and the deathclaws back west, we'd like to dissect a body. Bring us a deathclaw corpse intact and we'll pay you one thousand two hundred caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/mob/living/simple_animal/hostile/deathclaw = 1)
	caps_reward = 1200
	
/datum/bounty_quest/faction/wasteland/qst_21
	employer = "Church of Atom"
	need_message = "Old pre-war military maps of Texas indicate the existence of a Nuclear silo known as VALHALLA beneath the quarry to the south which was issued with additional cores for on-site replacement of warheads. We have reason to believe these cores are still present at the base, we are offering a bounty of eight thousand caps to whomever can bring us a safely contained plutonium core"
	end_message = "Atom protect you, child. You have rendered unto us a great service this day"
	target_items = list(/obj/item/nuke_core_container = 1)
	caps_reward = 8000
