/datum/ritual/cruciform/tessellate
	name = "cruciform"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/tessellate
	category = "Cleric"


/datum/ritual/targeted/cruciform/tessellate
	name = "cruciform targeted"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/tessellate
	category = "Cleric"


/datum/ritual/cruciform/tessellate/heal_heathen_special
	name = "Graceful Repose"
	phrase = "Deum precor gratia exceperat."
	desc = "A tricky litany that heals the mind and body of esoteric maladies such as genetic malignance or brain damage. However it requires them to be awake and able to hear you. This litany requires alot of power and needs a quarter of an hour to recharge."
	cooldown = TRUE
	cooldown_time = 15 MINUTES
	cooldown_category = "grepose" //It shares a cooldown because it replaces divine hymn, not add atop it.
	power = 60 //stronger healing higher cost

/datum/ritual/cruciform/tessellate/heal_heathen_special/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/list/people_around = list()
	for(var/mob/living/carbon/human/H in view(user))
		if(H != user && !isdeaf(H))
			people_around.Add(H)

	if(people_around.len > 0)
		to_chat(user, SPAN_NOTICE("Your feel the air thrum with an inaudible vibration."))
		playsound(user.loc, 'sound/machines/signal.ogg', 50, 1)
		for(var/mob/living/carbon/human/participant in people_around)
			to_chat(participant, SPAN_NOTICE("You hear a silent signal..."))
			heal_other(participant)
		set_personal_cooldown(user)
		return TRUE
	else
		fail("Your cruciform sings, alone, unto the void.", user, C)
		return FALSE


/datum/ritual/cruciform/tessellate/heal_heathen_special/proc/heal_other(mob/living/carbon/human/participant)
		to_chat(participant, "<span class='info'>A sensation of relief bathes you, washing away your most of your pain in body and mind</span>")
		participant.add_chemical_effect(CE_PAINKILLER, 100)
		participant.adjustCloneLoss(-20)
		participant.adjustBrainLoss(-20)
		participant.updatehealth()


/datum/ritual/cruciform/tessellate/heal_heathen_improved
	name = "Revivify"
	phrase = "Pastor gregem suum pascet, sive sciens sive ignarus gubernandum."
	desc = "Heal every person who can see and hear for a large amount, even if they do not have a cruciform. This prayer uses alot of power."
	cooldown = TRUE
	cooldown_time = 10 MINUTES
	cooldown_category = "dhymn"
	power = 50

/datum/ritual/cruciform/tessellate/heal_heathen_improved/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/list/people_around = list()
	for(var/mob/living/carbon/human/H in view(user))
		if(H != user && !isdeaf(H))
			people_around.Add(H)

	if(people_around.len > 0)
		to_chat(user, SPAN_NOTICE("Your feel the air thrum with an inaudible vibration."))
		playsound(user.loc, 'sound/machines/signal.ogg', 50, 1)
		for(var/mob/living/carbon/human/participant in people_around)
			to_chat(participant, SPAN_NOTICE("You hear a silent signal..."))
			heal_other(participant)
		set_personal_cooldown(user)
		return TRUE
	else
		fail("Your cruciform sings, alone, unto the void.", user, C)
		return FALSE


/datum/ritual/cruciform/tessellate/heal_heathen_improved/proc/heal_other(mob/living/carbon/human/participant)
		to_chat(participant, "<span class='info'>A sensation of relief bathes you, washing away your some of your pain</span>")
		participant.add_chemical_effect(CE_PAINKILLER, 40)
		participant.adjustBruteLoss(-40)
		participant.adjustFireLoss(-40)
		participant.adjustToxLoss(-40)
		participant.adjustOxyLoss(-80)
		participant.adjustBrainLoss(-10)
		participant.updatehealth()


/datum/ritual/cruciform/lemniscate
	name = "cruciform"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/lemniscate
	category = "Cantor"


/datum/ritual/targeted/cruciform/lemniscate
	name = "cruciform targeted"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/lemniscate
	category = "Cantor"

/datum/ritual/cruciform/lemniscate/long_boost
	name = "Long boost ritual"
	phrase = null
	desc = "This litany boosts mechanical stats of everyone who's hear you on the short time. "
	cooldown = TRUE
	cooldown_time = 2 MINUTES
	power = 50
	effect_time = 30 MINUTES
	cooldown_category = "short_boost"
	category = "Cantor"
	var/list/stats_to_boost = list()

	New()
		..()
		desc = "This litany boosts [get_stats_to_text()] stats of everyone who hears you, lasts about thirty minutes."


/datum/ritual/cruciform/lemniscate/long_boost/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	var/list/people_around = list()
	for(var/mob/living/carbon/human/H in view(user))
		if(H != user && !isdeaf(H))
			people_around.Add(H)

	if(people_around.len > 0)
		to_chat(user, SPAN_NOTICE("Your feel the air thrum with an inaudible vibration."))
		playsound(user.loc, 'sound/machines/signal.ogg', 50, 1)
		for(var/mob/living/carbon/human/participant in people_around)
			to_chat(participant, SPAN_NOTICE("You hear a silent signal..."))
			give_boost(participant)
		set_global_cooldown()
		return TRUE
	else
		fail("Your cruciform sings, alone, unto the void.", user, C)
		return FALSE


/datum/ritual/cruciform/lemniscate/long_boost/proc/give_boost(mob/living/carbon/human/participant)
	for(var/stat in stats_to_boost)
		var/amount = stats_to_boost[stat]
		participant.stats.changeStat(stat, amount)
		addtimer(CALLBACK(src, .proc/take_boost, participant, stat, amount), effect_time)
	spawn(30)
		to_chat(participant, SPAN_NOTICE("A wave of dizziness washes over you and your mind is filled with a sudden insight into [get_stats_to_text()]."))


/datum/ritual/cruciform/lemniscate/long_boost/proc/take_boost(mob/living/carbon/human/participant, stat, amount)
	participant.stats.changeStat(stat, -amount)
	to_chat(participant, SPAN_WARNING("Your knowledge of [get_stats_to_text()] feels lessened."))

/datum/ritual/cruciform/lemniscate/long_boost/proc/get_stats_to_text()
	if(stats_to_boost.len == 1)
		return lowertext(stats_to_boost[1])
	var/stats_text = ""
	for(var/i = 1 to stats_to_boost.len)
		var/stat = stats_to_boost[i]
		if(i == stats_to_boost.len)
			stats_text += " and [stat]"
			continue
		if(i == 1)
			stats_text += "[stat]"
		else
			stats_text += ", [stat]"
	return lowertext(stats_text)


/datum/ritual/cruciform/lemniscate/long_boost/mechanical
	name = "Hammering Roar"
	phrase = "Noli timere, quia ego tecum sum; ne declines, quia ego Deus tuus: Tuus confortavi te, et auxiliatus sum tibi, et suscepit te dextera Justi mei sunt."
	stats_to_boost = list(STAT_MEC = 30)

/datum/ritual/cruciform/lemniscate/long_boost/cognition
	name = "Discovery of Lore"
	phrase = "Haec locutus sum vobis ut in me pacem habeatis. In mundo pressuram habebitis. Sed confidite, Ego vici mundum."
	stats_to_boost = list(STAT_COG = 30)

/datum/ritual/cruciform/lemniscate/long_boost/biology
	name = "Sanctorum of Life"
	phrase = "Venite ad me omnes qui laboratis, et onerati estis, et ego reficiam vos."
	stats_to_boost = list(STAT_BIO = 30)

/datum/ritual/cruciform/lemniscate/long_boost/courage
	name = "Dirge of Honor"
	phrase = "Confortare et esto robustus. Nolite timere nec paveatis a conspectu eorum quia Dominus Deus tuus ipse est ductor tuus. Et non dimittet nec derelinquet te."
	stats_to_boost = list(STAT_ROB = 30, STAT_TGH = 30)

/datum/ritual/cruciform/lemniscate/long_boost/vigilance
	name = "Binding Geas"
	phrase = "Dat lasso virtutem et his qui non sunt fortitudinem et robur multiplicat."
	stats_to_boost = list(STAT_VIG = 30)


/datum/ritual/cruciform/monomial
	name = "cruciform"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/monomial
	fail_message = "The Cruciform feels cold against your chest."
	category = "Paladin"


/datum/ritual/targeted/cruciform/monomial
	name = "cruciform targeted"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/monomial
	category = "Paladin"

/datum/ritual/cruciform/monomial/ironskin
	name = "Resolution"
	phrase = "Ut det Dominus virtutem populo suo? Sit Dominus benedicet populo suo in pace."
	desc = "A short litany that removes all pain, it is much stronger then the relief litany, but requires more power and has a short cooldown between uses."
	power = 50
	cooldown_time = 5 MINUTES

/datum/ritual/cruciform/monomial/ironskin/perform(mob/living/carbon/human/H, obj/item/weapon/implant/core_implant/C)
	H.add_chemical_effect(CE_PAINKILLER, 10000, TRUE)
	H.apply_effect(-200, AGONY, 0)
	return TRUE

/datum/ritual/cruciform/monomial/perfect_self
	name = "Perfect Self"
	phrase = "Quaerite primum regnum Dei et iustitiam eius, et haec omnia adicientur vobis."
	desc = "A solemn prayer, often spoken in a whisper that allows a disciple of the monomial to focus inward and reach their full potential in both body and mind. This litany lasts ten minutes and takes over half an hour before it can be used again."
	cooldown = TRUE
	cooldown_time = 30 MINUTES
	cooldown_category = "pself"
	effect_time = 10 MINUTES
	power = 90

/datum/ritual/cruciform/monomial/perfect_self/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	user.stats.changeStat(STAT_TGH, 10)
	user.stats.changeStat(STAT_ROB, 10)
	user.stats.changeStat(STAT_VIG, 10)
	user.stats.changeStat(STAT_COG, 10)
	user.stats.changeStat(STAT_BIO, 10)
	user.stats.changeStat(STAT_MEC, 10)
	to_chat(user, SPAN_NOTICE("You feel at peace with yourself, your body and mind going beyond its limits."))
	set_personal_cooldown(user)
	addtimer(CALLBACK(src, .proc/discard_effect, user), src.cooldown_time)
	return TRUE

/datum/ritual/cruciform/monomial/perfect_self/proc/discard_effect(mob/living/carbon/human/user, amount)
	user.stats.changeStat(STAT_TGH, -10)
	user.stats.changeStat(STAT_ROB, -10)
	user.stats.changeStat(STAT_VIG, -10)
	user.stats.changeStat(STAT_COG, -10)
	user.stats.changeStat(STAT_BIO, -10)
	user.stats.changeStat(STAT_MEC, -10)


/datum/ritual/cruciform/divisor
	name = "cruciform"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/divisor
	category = "Templar"


/datum/ritual/targeted/cruciform/divisor
	name = "cruciform targeted"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform/divisor
	category = "Templar"

/datum/ritual/targeted/cruciform/divisor/spawn_con
	name = "Canticle of Defense"
	phrase = "Sed Dominus autem mihi astitit, et confortavit me, ut per me prædicatio impleatur, et nuntius ut audirent eum omnes gentes."
	desc = "Summons a Hospitaller longsword and a Centurio pistol for defending yourself and your fellow disciples. Establishing the connection takes a lot of power and this litany may only be used once every four hours."
	power = 50
	cooldown = TRUE
	cooldown_time = 4 HOURS
	cooldown_category = "cdefn"


/datum/ritual/targeted/cruciform/divisor/spawn_con/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C,list/targets)
	new /obj/item/weapon/gun/energy/centurio(usr.loc)
	new /obj/item/clothing/accessory/holster/saber/greatsword/occupied(usr.loc)
	new /obj/item/weapon/cell/medium/moebius/omega(usr.loc)
	set_personal_cooldown(user)

/datum/ritual/cruciform/divisor/div_flash
	name = "Ire"
	phrase = "Fortitudo mea et laus mea Dominus, et sicut in omnibus divitiis."
	desc = "Knocks over everybody without cruciform in your view range. Though the energy emitted is quite powerful, a vigilant person may resist it. This litany can only be used once every five minutes."
	cooldown = TRUE
	cooldown_time = 5 MINUTES
	cooldown_category = "dflas"
	power = 50

/datum/ritual/cruciform/divisor/div_flash/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
	playsound(user.loc, 'sound/effects/cascade.ogg', 65, 1)
	log_and_message_admins("performed an ire litany")
	for(var/mob/living/victim in view(user))
		if(!victim.get_core_implant(/obj/item/weapon/implant/core_implant/cruciform))
			if(prob(100 - victim.stats.getStat(STAT_VIG)))
				to_chat(victim, SPAN_WARNING("You feel a blast of energy that knocks you down!"))
				victim.Stun(5)
				victim.Weaken(5)
			else
				to_chat(victim, SPAN_NOTICE("Your legs feel numb, but you managed to stay on your feet!"))
	set_personal_cooldown(user)
	return TRUE