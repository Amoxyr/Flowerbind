if place_meeting(x,y,obj_aarch) && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_enter))
{
	if not instance_exists(obj_textbox)
	{
	create_textbox(text_id)
	}
}




depth = -bbox_bottom