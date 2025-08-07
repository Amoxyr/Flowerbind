if place_meeting(x,y,obj_aarch) and obj_aarch.can_move && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_enter))
{
	var _instantiated = instance_create_depth(x,y,-9999,obj_textbox)
	_instantiated.text = text

}
depth = -bbox_bottom