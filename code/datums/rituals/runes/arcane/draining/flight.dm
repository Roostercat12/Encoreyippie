/obj/effect/decal/cleanable/ritual_rune/arcyne/mana_siphon/flight
	name = "arcyne flight sigil"
	desc = "A smooth curved sigil, allowing free flight in the area.."
	color = "#73c1e0"
	invocation = "Kael'veth nal'see!"
	buff = /datum/status_effect/mana_siphon_buff/flight
	mana_cost = 1.2

/datum/status_effect/icarus_envy
	id = "mana_siphon_postflight_protection"
	alert_type = /atom/movable/screen/alert/status_effect/icarus_envy

/datum/status_effect/icarus_envy/on_creation(mob/living/afflicted)
	. = ..()
	passtable_on(afflicted, "[type]")
	ADD_TRAIT(owner, TRAIT_NOFALLDAMAGE2, "[type]")
	to_chat(afflicted, span_hierophant_warning("Arcane energy lingers to soften your landing."))

/datum/status_effect/icarus_envy/on_remove()
	. = ..()
	to_chat(owner, span_cultsmall("The lingering arcyne protection dissipates."))
	passtable_off(owner, "[type]")
	REMOVE_TRAIT(owner, TRAIT_NOFALLDAMAGE2, "[type]")

/datum/status_effect/mana_siphon_buff/flight
	id = "mana_siphon_flight_buff"
	alert_type = /atom/movable/screen/alert/status_effect/mana_siphon_buff/flight
	max_range = 3

/datum/status_effect/mana_siphon_buff/flight/on_creation(mob/living/afflicted)
	. = ..()
	passtable_on(afflicted, "[type]")
	ADD_TRAIT(owner, TRAIT_MOVE_FLYING, "[type]")
	to_chat(afflicted, span_hierophant_warning("Arcane energy crackles through your limbs, you feel weightless."))

/datum/status_effect/mana_siphon_buff/flight/on_remove()
	. = ..()
	to_chat(owner, span_cultsmall("The frenetic energy leaves you."))
	// let them survive splatting if the buff runs out mid-flight
	owner.apply_status_effect(/datum/status_effect/icarus_envy, (2 SECONDS))
	passtable_off(owner, "[type]")
	REMOVE_TRAIT(owner, TRAIT_MOVE_FLYING, "[type]")

/atom/movable/screen/alert/status_effect/icarus_envy
	name = "Arcyne Fall Protection"
	desc = "You are falling after losing Arcyne Flight, but remnant energy protects you as you land."
	icon = 'icons/mob/screen_alert.dmi'
	icon_state = "censerbuff" // reuse an existing mana icon; swap as needed

/atom/movable/screen/alert/status_effect/mana_siphon_buff/flight
	name = "Arcyne Flight"
	desc = "You are bound to a flight sigil. While near it, arcane energy allows free movement upwards."
