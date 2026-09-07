/proc/tgui_input_checkboxes(mob/user, message, title = "Select", list/items, min_checked = 0, max_checked = 50, timeout = 0, ui_state = GLOB.always_state)
	if(!user)
		user = usr
	if(!length(items))
		return null
	if(!istype(user))
		if(istype(user, /client))
			var/client/client = user
			user = client.mob
		else
			return null
	if(isnull(user.client))
		return null

	var/datum/tgui_checkbox_input/input = new(user, message, title, items, min_checked, max_checked, timeout, ui_state)
	if(input.invalid)
		qdel(input)
		return null
	input.ui_interact(user)
	input.wait()
	if(input)
		. = input.choices
		qdel(input)

/datum/tgui_checkbox_input
	var/title
	var/message
	var/list/items
	var/list/items_map
	var/list/choices
	var/min_checked
	var/max_checked
	var/start_time
	var/timeout
	var/closed
	var/invalid = FALSE
	var/datum/ui_state/state

/datum/tgui_checkbox_input/New(mob/user, message, title, list/items, min_checked, max_checked, timeout, ui_state)
	src.title = title
	src.message = message
	src.min_checked = min_checked
	src.max_checked = max_checked
	src.state = ui_state
	src.items = list()
	src.items_map = list()

	for(var/i in items)
		if(!i)
			continue
		var/label = "[i]"
		var/value = isnull(items[i]) ? i : items[i]
		if(label in src.items_map)
			continue
		src.items += label
		src.items_map[label] = value

	if(!length(src.items))
		invalid = TRUE
	if(timeout)
		src.timeout = timeout
		start_time = world.time
		QDEL_IN(src, timeout)

/datum/tgui_checkbox_input/Destroy(force)
	SStgui.close_uis(src)
	state = null
	items?.Cut()
	items_map?.Cut()
	return ..()

/datum/tgui_checkbox_input/proc/wait()
	while(!closed && !QDELETED(src))
		stoplag(1)

/datum/tgui_checkbox_input/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "CheckboxInput")
		ui.open()

/datum/tgui_checkbox_input/ui_close(mob/user)
	. = ..()
	closed = TRUE

/datum/tgui_checkbox_input/ui_state(mob/user)
	return state

/datum/tgui_checkbox_input/ui_static_data(mob/user)
	return list(
		"items" = items,
		"message" = message,
		"title" = title,
		"min_checked" = min_checked,
		"max_checked" = max_checked,
	)

/datum/tgui_checkbox_input/ui_data(mob/user)
	var/list/data = list()
	if(timeout)
		data["timeout"] = clamp((timeout - (world.time - start_time) - 1 SECONDS) / (timeout - 1 SECONDS), 0, 1)
	return data

/datum/tgui_checkbox_input/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	if(.)
		return
	switch(action)
		if("submit")
			var/list/selections = params["entry"]
			if(!islist(selections))
				return TRUE
			if(length(selections) < min_checked || length(selections) > max_checked)
				return TRUE
			var/list/resolved = list()
			for(var/entry in selections)
				if(!(entry in items))
					return TRUE
				resolved += items_map[entry]
			choices = resolved
			closed = TRUE
			SStgui.close_uis(src)
			return TRUE
		if("cancel")
			closed = TRUE
			SStgui.close_uis(src)
			return TRUE
