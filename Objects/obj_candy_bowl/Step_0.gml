if place_meeting(x,y,obj_aarch) && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_enter))
{
	if not instance_exists(obj_textbox)
	{
	create_textbox(text_id)
	}
}
if global.badge_11 = true{text_id = "bol gateau etoile - 2"}
if global.badge_12 = true{text_id = "bol gateau etoile - 3"}
if global.badge_13 = true{text_id = "bol gateau etoile - 4"}
if global.badge_14 = true{text_id = "bol gateau etoile - 5"}
if global.badge_15 = true{text_id = "bol gateau etoile - 6";sprite_index = spr_candy_bowl_fall}

depth = -bbox_bottom