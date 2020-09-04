/datum/ritual/cruciform/knight
	name = "knight"
	phrase = null
	desc = ""
	category = "Brother-Knight"

/datum/ritual/targeted/cruciform/knight
	name = "knight targeted"
	phrase = null
	desc = ""
	category = "Brother-Knight"

/datum/ritual/cruciform/knight/unupgrade
	name = "Asacris"
	phrase = "A caelo usque ad centrum."
	desc = "This litany will remove any upgrade from the target's cruciform implant. Useable only by Knights and Confessors"
	power = 100
	category = "Brother-Knight"

/datum/ritual/cruciform/knight/unupgrade/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/obj/item/weapon/implant/core_implant/cruciform/CI = get_implant_from_victim(user, /obj/item/weapon/implant/core_implant/cruciform)

	if(!CI)
		fail("There is no cruciform on this one.", user, C)
		return FALSE

	if(!CI.wearer)
		fail("Cruciform is not installed.", user, C)
		return FALSE

	if(!istype(CI.upgrades) || length(CI.upgrades) <= 0)
		fail("There are no upgrades on this one.", user, C)
		return FALSE

	if(length(CI.upgrades) >= 4)
		fail("You cannot Asacrate your fellow Brother-Knights.", user, C)
		return FALSE

	for(var/obj/item/weapon/coreimplant_upgrade/CU in CI.upgrades)
		CU.remove()
		log_and_message_admins("removed upgrades from [C] cruciform with asacris litany")

	return TRUE

	/datum/ritual/targeted/cruciform/knight/atonement
	name = "Atonement"
	phrase = "Piaculo sit \[Target human]!"
	desc = "Imparts extreme pain on the target disciple, but does no actual harm. Use this if someone who performs a heretical act."
	power = 50
	category = "Vitae"

/datum/ritual/targeted/cruciform/knight/atonement/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	if(!targets.len)
		fail("Target not found.",user,C,targets)
		return FALSE

	var/obj/item/weapon/implant/core_implant/CI = targets[1]

	if(!CI.active || !CI.wearer)

		fail("Cruciform not found.", user, C)
		return FALSE

	var/mob/living/M = CI.wearer
	log_and_message_admins("inflicted pain on [C] with atonement litany")
	to_chat(M, SPAN_DANGER("A wave of agony washes over you, the cruciform in your chest searing like a star for a few moments of eternity."))


	var/datum/effect/effect/system/spark_spread/s = new
	s.set_up(1, 1, M.loc)
	s.start()

	M.apply_effect(50, AGONY, 0)

	return TRUE

/datum/ritual/targeted/cruciform/knight/atonement/process_target(var/index, var/obj/item/weapon/implant/core_implant/target, var/text)
	target.update_address()
	if(index == 1 && target.address == text)
		if(target.wearer && (target.loc && (target.locs[1] in view())))
			return target

	/datum/ritual/targeted/cruciform/knight/upgrade_kit
	name = "Covenant"
	phrase = "I vow that I have found a worthy candidate for the trials of Knighthood"
	desc = "Request an upgrade kit to promote a Chaplain to a Corporal"
	power = 50

/datum/ritual/targeted/cruciform/knight/upgrade_kit/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/CI,list/targets)
	new /obj/item/weapon/coreimplant_upgrade/cruciform/priest(usr.loc)

	return TRUE

/datum/ritual/cruciform/knight/initiation
	name = "Initiation"
	phrase = "By the power vested in me as a Brother-Knight, I declare you to have risen in station."
	desc = "The second stage of granting a promotion to a Novice. The ascension kit is the first step."
	power = 50

/datum/ritual/cruciform/Knight/initiation/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	var/obj/item/weapon/implant/core_implant/CI = get_implant_from_victim(user, /obj/item/weapon/implant/core_implant/cruciform)

	if(!CI || !CI.wearer || !ishuman(CI.wearer) || !CI.active)
		fail("Cruciform not found",user,C)
		return FALSE


	if(CI.get_module(CRUCIFORM_SQUIRE) || CI.get_module(CRUCIFORM_SERGEANT))
		fail("The target is already inducted.",user,C)
		return FALSE

	var/datum/core_module/activatable/cruciform/priest_convert/PC = CI.get_module(CRUCIFORM_PRIEST_CONVERT)

	if(!PC)
		fail("Target must have the induction upgrade inside their cruciform.",user,C)
		return FALSE

	PC.activate()
	log_and_message_admins("promoted disciple [C] to Brother Chaplain with initiation litany")

	return TRUE
