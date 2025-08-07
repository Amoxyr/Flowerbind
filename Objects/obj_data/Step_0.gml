down_key = keyboard_check_pressed(vk_down)
up_key = keyboard_check_pressed(vk_up)

if keyboard_check_pressed(ord("S"))
{
instance_destroy()
}



obj_tmsettings.member_pos += down_key - up_key
if obj_tmsettings.member_pos >= array_length(obj_tmsettings.tmember){obj_tmsettings.member_pos = 0}
if obj_tmsettings.member_pos < 0{obj_tmsettings.member_pos = array_length(obj_tmsettings.tmember) - 1}





