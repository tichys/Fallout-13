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
	need_message = "Ghouls keep attacking my caravans. I need you to kill ten of them, clear the wastes out a bit. Skin the face of each one you kill and bring ten of those back here as proof. I'll give you 800 caps for your trouble"
	end_message = "Superb job, thanks for that. Here's your caps"
	target_items = list(/obj/item/trash/f13/ghoulface = 10)
	caps_reward = 800

/datum/bounty_quest/faction/wasteland/qst_1
	employer = "Jonah Orion, Red Water Caravans"
	need_message = "A client of mine is looking for raw nuclear material. I need you to find and bring back one of those sealed pre-war waste barrels. Bring it to the pod and I'll throw 4000 caps your way"
	end_message = "Superb job, thanks for that. Here's your caps"
	target_items = list(/obj/structure/reagent_dispensers/barrel/dangerous = 1)
	caps_reward = 4000

/datum/bounty_quest/faction/wasteland/qst_2
	employer = "George Miller, NCR Sharecropper Farming"
	need_message = "Goddamn molerats keep eating our crops. I need you to kill five of them. Bring back their tails as proof of the deed. I'll pay you 225 caps"
	end_message = "Thanks for that. Now I might be able to put some damn food on the table"
	target_items = list(/obj/item/trash/f13/molerattail = 5)
	caps_reward = 225

/datum/bounty_quest/faction/wasteland/qst_3
	employer = "Unknown 'Aspiring Doctor'"
	employer_icon = "employercannibal.png"
	need_message = "I need you to bring me a body. A human one. Just the whole thing. For... dissection and study! I'm a doctor, you know. Let's make the price... 600 caps"
	end_message = "Mmhm, a prime cut. Thank you"
	target_items = list(/mob/living/carbon/human = 1)
	caps_reward = 600

/datum/bounty_quest/faction/wasteland/qst_4
	employer = "Hoi Chen, American"
	employer_icon = "employerpla.png"
	need_message = "Hello yes. I need gun, very American gun. You find for me, I pay you 500 caps. It is called Colt Model 733. Find for me quickly, for Chin- Uncle Sam and Hotdogs. Yes"
	end_message = "Hohoho! Thank you for this. I will use very well on those uh... commies, yes"
	target_items = list(/obj/item/weapon/gun/ballistic/automatic/carbine = 1)
	caps_reward = 500

/datum/bounty_quest/faction/wasteland/qst_5
	employer = "New California Republic, Department of Wildlife Management"
	need_message = "The New California Republic is on the way into Texas and we need the help of locals willing to help clear the path for a more civilized world. Our advanced scouts spotted a large concentration of Deathclaws across the Texas wastes and want to thin the herd a bit. Kill three deathclaws and bring back their largest right-handed talons. We are offering a bounty of 5000 caps for this one"
	end_message = "The republic thanks you for your service."
	target_items = list(/obj/item/trash/f13/deathclawtalon = 3)
	caps_reward = 5000

/datum/bounty_quest/faction/wasteland/qst_6
	employer = "Caesar's Legion"
	need_message = "Caesar's Legion seeks the aid of locals willing to serve mighty Caesar. We seek the death of the NCR dogs in the area. Bring us three of their dogtags and we will give you 800 caps"
	end_message = "Victoria Caesaris. You have the Legion's thanks, profligate"
	target_items = list(/obj/item/weapon/card/id/ncr = 3)
	caps_reward = 800

/datum/bounty_quest/faction/wasteland/qst_7
	employer = "New California Republic, Department of War"
	need_message = "Legion slavers have been spotted in the area. They are a nasty bunch, raping and pillaging what they don't just kill. We're looking to thin their numbers a bit before the mainstay of the NCR army arrives and are enlisting locals to help. Bring us three of Marks of Caesar from dead Legionnaires and we'll pay a bounty of 800 caps"
	end_message = "You have the personal thanks of a great deal of fallen NCR soldiers for what you have done here today, thank you"
	target_items = list(/obj/item/weapon/card/id/legion = 3)
	caps_reward = 800

/datum/bounty_quest/faction/wasteland/qst_9
	employer = "Texas Wastes Bounty Board Management"
	need_message = "We're runing low on paper to print bounties. Bring us twenty sheets of paper and we'll pay you 200 caps"
	end_message = "Good job, at least we won't run out of paper yet"
	target_items = list(/obj/item/weapon/paper = 20)
	caps_reward = 200

/datum/bounty_quest/faction/wasteland/qst_10
	employer = "New California Republic, Department of Agriculture"
	need_message = "The New California Republic is always expanding and this means we always have hungry mouths to feed. Bring us ten heads of corn and we'll pay 150 caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/corn = 10)
	caps_reward = 150

/datum/bounty_quest/faction/wasteland/qst_11
	employer = "New California Republic, Department of Agriculture"
	need_message = "The New California Republic is always expanding and this means we always have hungry mouths to feed. We've had a food shortage and desperately need corn, bring us thirty heads of corn and we'll pay 400 caps"
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
	need_message = "The New California Republic is always expanding and this means we always have hungry mouths to feed. We've had a food shortage and desperately need carrots, bring us thirty carrots and we'll pay 200 caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/carrot = 30)
	caps_reward = 200

/datum/bounty_quest/faction/wasteland/qst_14
	employer = "Speed Slashin' Strikerz"
	need_message = "Hey, truce for now. How's this damn thing work? Oh. Like that. OK so, me and the boys are running low on that good shit. We're looking for some grown replacements, bring us ten cannabis leaves and we'll pay 300 caps"
	end_message = "WOOOO! You're the best. Caps are in the slot thingy"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/cannabis = 10)
	caps_reward = 300

/datum/bounty_quest/faction/wasteland/qst_15
	employer = "Speed Slashin' Strikerz"
	need_message = "We're running real damn low on those cannabis leaves, they're addictive as hell. Bring us thirty leaves and we'll pay ya 1000 caps"
	end_message = "Hell yeah, let's roll this shit up boys. Caps are below"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/cannabis = 30)
	caps_reward = 1000

/datum/bounty_quest/faction/wasteland/qst_16
	employer = "Snake Vargas, N.C.R RANGERS"
	need_message = "Running low on chewin' 'bacco. Bring me ten tobacco leaves and I'll pay ya' 300 caps"
	end_message = "You got my thanks, waster. Keep your eyes on that crimson horizon, maybe you'll catch a glimpse of me fragging Legion scum"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/grown/tobacco = 10)
	caps_reward = 300

/datum/bounty_quest/faction/wasteland/qst_17
	employer = "Hershel Greene"
	need_message = "I've got goddamn wolves moving in on my church. I need someone to clear them out. Bring me eight wolf tails as proof of the deed. I'll pay 275 caps"
	end_message = "Thank you, wastelander. Walk with God"
	target_items = list(/obj/item/trash/f13/wolftail = 8)
	caps_reward = 275

/datum/bounty_quest/faction/wasteland/qst_18
	employer = "PSYCHO GIBBINS"
	need_message = "I NEED MY FIX MAN, 300 CAPS FOR A HIT OF PSYCHO, HIT ME UP"
	end_message = "WOOOOOOOOOOOOOOOOOOOOOOO!!!"
	target_items = list(/obj/item/weapon/reagent_containers/pill/patch/psycho = 1)
	caps_reward = 300

/datum/bounty_quest/faction/wasteland/qst_19
	employer = "New California Republic, Department of Wasteland Anatomy"
	need_message = "We've spotted some rad scorpions native to Texas, you'll spot them by their unique black colouration. Bring us one whole black radscorpion body, we'll pay 500 caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/mob/living/simple_animal/hostile/rad_scorpion/black = 1)
	caps_reward = 500

/datum/bounty_quest/faction/wasteland/qst_20
	employer = "New California Republic, Department of Wasteland Anatomy"
	need_message = "We're looking to see if there's any difference between Texan deathclaws and the deathclaws back west, we'd like to dissect a body. Bring us a deathclaw corpse intact and we'll pay you 1200 caps"
	end_message = "The republic thanks you for your service"
	target_items = list(/mob/living/simple_animal/hostile/deathclaw = 1)
	caps_reward = 1200

//////////////////////////////////////////
////////////NCR QUESTS BELOW//////////////
//////////////////////////////////////////

/datum/bounty_quest/faction/NCR/qst_01
	employer = "The Captain: Outstanding Objective #1"
	need_message = "As part of our expansion into Texas, we've made contact with Caesar's Legion, an aggressive group of slavers. We've got outstanding orders to kill as many as we can before the mainstay of the NCR army arrives to reinforce us. There's a bounty of 400 caps out for each Mark of Caesar you can claim from a dead legionnaire. Just bring them back to the pod here for safeekeping and collect your bounty"
	end_message = "Good job, trooper. Keep this up and we'll have the Legion turning tail in no time"
	target_items = list(/obj/item/weapon/card/id/legion = 1)
	caps_reward = 400

/datum/bounty_quest/faction/NCR/qst_02
	employer = "The Captain: Outstanding Objective #2"
	need_message = "As part of our expansion into Texas, we've had reported sightings of Brotherhood members in power armour. They're an enemy of the republic which means they're an enemy of yours. The expeditionary force has a bounty out for any Brotherhood holotags you can claim from their dead. 1100 caps per tag. Get on it trooper"
	end_message = "Great job, trooper. Those brotherhood cowards don't stand a chance"
	target_items = list(/obj/item/weapon/card/id/bos = 1)
	caps_reward = 1100

/datum/bounty_quest/faction/NCR/qst_03
	employer = "The Captain: Outstanding Objective #3"
	need_message = "As part of our expansion into Texas, we've had reported sightings of Enclave war criminals. They are an enemy of all mankind, every single member of their heinous group is wanted for attempted genocide and many unspeakable crimes against humanity. The president himself has weighed in on this and while any Enclave personnel spotted should be brought in if possible for trial and execution, that is not alway possible. As such there is now a bounty out for Advanced Power Armor suits. Kill or incapacitate the monster wearing them and bring the suits back here for disassembly. All mankind is hoping to hear the good news, trooper. Bring me some Enclave corpses to satisfy them. You'll get 2800 caps per standard suit of Enclave power armour"
	end_message = "Superb job, trooper. You'll get a commendation for this for sure. That's one less genocidal war criminal left to plague the world"
	target_items = list(/obj/item/clothing/suit/armor/f13/power_armor/advanced = 1)
	caps_reward = 2800

//////////////////////////////////////////
//////////LEGION QUESTS BELOW/////////////
//////////////////////////////////////////

/datum/bounty_quest/faction/LEGION/qst_01
	employer = "The Legate: Outstanding Objective #1"
	need_message = "The profligate heathens of the NCR have been spotted in the area. Specifically, their renowned 'Rangers' have been seen scouting across Texas. Find and capture or kill any rangers you can. Be sure to crucify them out front once you've brought them in and taken their equipment. We want their unique revolvers as trophies. Nothing breaks the morale of NCR conscripted soldiers faster than seeing dozens of Ranger sidearms decorating a Legion encampment. You will receive 1600 caps per Ranger Sequoia you bring to the camp"
	end_message = "You serve Caesar well, Legionaire"
	target_items = list(/obj/item/weapon/gun/ballistic/revolver/sequoia = 1)
	caps_reward = 1600

/datum/bounty_quest/faction/LEGION/qst_02
	employer = "The Legate: Outstanding Objective #2"
	need_message = "Every day, more dogs of the NCR arrive in Texas. We will stem the flow by sowing terror among their ranks. Headhunt NCR troopers and bring me their dogtags, you'll receive 500 caps per dogtag and soon we'll ward off any reinforcements with a mountain of bodies and NCR tags that will instill dread into even the dumbest rancher from California"
	end_message = "You serve the legion well. Carry on"
	target_items = list(/obj/item/weapon/card/id/ncr = 1)
	caps_reward = 500

datum/bounty_quest/faction/LEGION/qst_03
	employer = "The Legate: Outstanding Objective #3"
	need_message = "The camp requires food, you are to hunt wasteland creatures and return their meat here to sustain our encampment and the war effort. 200 caps per meat item you return"
	end_message = "The Legion eats well today thanks to your efforts. Walk proud, Legionnaire"
	target_items = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/ = 1)
	caps_reward = 200
