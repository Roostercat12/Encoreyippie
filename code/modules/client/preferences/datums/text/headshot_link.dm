/datum/preference/text/headshot_link
	savefile_key = "headshot_link"
	savefile_identifier = PREF_CHARACTER
	category = "character_ooc"
	can_randomize = FALSE
	maximum_value_length = 512
	should_update_preview = FALSE

/datum/preference/text/headshot_link/create_default_value()
	return ""

/datum/preference/text/headshot_link/is_valid(value, datum/preferences/prefs)
	if(!length(value))
		return TRUE
	return ..() && is_valid_headshot_link(null, value, TRUE)

/datum/preference/text/headshot_link/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/prefs)
	target.headshot_link = value

/datum/preference/text/headshot_link/handle_link(datum/preferences/preferences, mob/user)
	var/current = preferences.read_preference(type)
	var/new_value = input(
		user,
		"Paste an https link (gyazo, lensdump, imgbox, catbox). Clear the box and press OK to remove. Cancel keeps the current photo.",
		"Headshot",
		current,
	) as text|null

	if(isnull(new_value))
		return

	new_value = trim(new_value)
	if(!is_valid(new_value, preferences))
		if(length(new_value))
			is_valid_headshot_link(user, new_value, FALSE)
		return

	preferences.update_preference(src, new_value)
	if(!length(new_value))
		to_chat(user, span_notice("Headshot removed."))
