/datum/surgery/penis_enlargement
	name = "Penis enlargement"
	possible_locs = list(BODY_ZONE_PRECISE_GROIN)
	steps = list(
		/datum/surgery_step/incise
		/datum/surgery_step/stretch
		/datum/sugery_step/close
	)
//Stretch
/datum/surgery_step/stretch
	name = "stretch penis"
	implements = list(
		TOOL_RETRACTOR = 100
		TOOL_SCREWDRIVER = 45,
		TOOL_WIRECUTTER = 35,
		/obj/item/stack/rods = 35)
	time = 32

/datum/surgery_step/stretch/preop(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	user.visible_message(span_notice("[user] begins to stretch [target]'s penis."), span_notice("You begin to stretch [target]'s penis..."))
	display_results(
		user,
		target,
		span_notice("You begin to stretch [target]'s penis..."),
		span_notice("[user] begins to stretch out [target]'s penis."),
		span_notice("[user] begins to stretch out [target]'s penis."),
	)
	display_pain(target, "You feel horrible rending pain throughout your manhood!")

/datum/surgery_step/stretch/success(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery, default_display_results = FALSE)
	user.visible_message(span_notice("[user] finishes stretching [target]'s penis."), span_notice("You finish stretching [target]'s penis..."))
		display_results(
			user,
			target,
			span_notice("You successfully enlongate [target]'s willy."),
			span_notice("[user] successfully lengthens [target]'s penis!"),
			span_notice("[user] finishes the operation on [target]'s cock."),
		)
		display_pain(target, "The pain fades, your penis feels bigger than normal!")

/datum/surgery_step/stretch/failure(mob/user, mob/living/carbon/target, target_zone, obj/item/tool, datum/surgery/surgery)
	display_results(
		user,
		target,
		span_warning("You screw up, leaving [target]'s member disfigured!"),
		span_notice("[user] screws up, disfiguring [target]'s genitals!"),
		span_notice("[user] finishes the operation on [target]'s cock."),
	)
	display_pain(target, "Your weiner feels horribly scarred and deformed!")
