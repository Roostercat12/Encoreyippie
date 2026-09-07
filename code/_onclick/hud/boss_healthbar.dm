/atom/movable/screen/movable/boss_health
	name = "Boss"
	icon = 'icons/UI_Icons/bosshealthbar.dmi'
	icon_state = "base"
	screen_loc = "WEST,NORTH:-40"
	plane = ABOVE_HUD_PLANE
	mouse_opacity = MOUSE_OPACITY_ICON
	clear_with_screen = FALSE
	maptext_width = 400
	maptext_height = 32
	maptext_x = 0
	maptext_y = 20
	x_off = -200
	y_off = -36

	var/mob/living/boss
	var/atom/movable/screen/health_fill/fill
	var/atom/movable/screen/boss_name/title

/atom/movable/screen/movable/boss_health/Initialize(mapload, mob/living/owner_boss)
	. = ..()
	boss = owner_boss
	name = owner_boss.boss_name || owner_boss.name
	title = new
	title.set_boss_name(name)

	fill = new
	vis_contents += fill
	update_boss_name()
	update_boss_health()

/atom/movable/screen/movable/boss_health/Destroy()
	boss = null
	QDEL_NULL(fill)
	QDEL_NULL(title)
	return ..()

/atom/movable/screen/movable/boss_health/proc/update_boss_name()
	maptext = {"<span style="font-family: 'Blackmoor LET'; font-size: 24px; color: #FFFFFF; text-align: center; -dm-text-outline: 1px black">[name]</span>"}

/atom/movable/screen/movable/boss_health/proc/update_boss_health()
	if(QDELETED(boss))
		return
	var/ratio = 0
	if(boss.maxHealth > 0)
		ratio = CLAMP(boss.health / boss.maxHealth, 0, 1)
	fill.update_ratio(ratio)

/atom/movable/screen/movable/boss_health/MouseDrop(over_object, src_location, over_location, src_control, over_control, params)
	if(locked)
		return
	. = ..()
	moved = TRUE

/atom/movable/screen/movable/boss_health/proc/set_stack_index(index)
	screen_loc = "WEST,NORTH:[-40 - (index * 28)]"
	if(title)
		title.screen_loc = "WEST,NORTH:[-12 - (index * 28)]"

/atom/movable/screen/health_fill
	icon = 'icons/UI_Icons/bosshealthbar.dmi'
	icon_state = "dam0"
	appearance_flags = KEEP_TOGETHER
	layer = 0.1

/atom/movable/screen/health_fill/proc/update_ratio(ratio)
	ratio = CLAMP(ratio, 0, 1)
	var/step = round((1 - ratio) * 10) * 10
	step = CLAMP(step, 0, 100)
	icon_state = "dam[step]"

/atom/movable/screen/boss_name
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "blank"
	plane = ABOVE_HUD_PLANE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	clear_with_screen = FALSE
	maptext_width = 400
	maptext_height = 32
	maptext_x = 0
	maptext_y = 0

/atom/movable/screen/boss_name/proc/set_boss_name(displayed_name)
	maptext = {"<span style="font-family: 'Blackmoor LET'; font-size: 24px; color: #FFFFFF; text-align: center; -dm-text-outline: 1px black">[displayed_name]</span>"}
