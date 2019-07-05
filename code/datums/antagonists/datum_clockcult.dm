//this role is now used in f13 to define whether power armor can be used or not.

/datum/antagonist/clockcultist
	prevented_antag_datum_type = /datum/antagonist/clockcultist
	some_flufftext = null

/datum/antagonist/clockcultist/silent
	silent_update = TRUE

/datum/antagonist/clockcultist/Destroy()
	..()

/datum/antagonist/clockcultist/can_be_owned(mob/living/new_body)
	. = ..()
	if(.)
		. = is_eligible_servant(new_body)

/datum/antagonist/clockcultist/give_to_body(mob/living/new_body)
	if(issilicon(new_body))
		to_chat(new_body, "<span class='heavy_brass'>You shouldn't be seeing this. Please report this to an admin and mention this error: CLOCKCULTAISTATUS</span>")
	else
		to_chat(owner, "<span class='heavy_brass'>You have learned how to use power armor!</span>")
	. = ..()
	if(!silent_update && new_body)
		to_chat(owner, "<span class='heavy_brass'>You have learned how to use power armor!</span>")

/datum/antagonist/clockcultist/on_remove()
	if(!silent_update)
		to_chat(owner, "<span class='heavy_brass'>You have forgotten how to use power armor!</span>")
	if(owner.mind)
		owner.mind.wipe_memory()
		owner.mind.special_role = null
	owner.attack_log += "\[[time_stamp()]\] <font color=#BE8700>has forgotten how to use power armor! This is likely a bug, investigate!</font>"
	..()
