/// @menu



if (can_create = true)
{
if keyboard_check_pressed(vk_numpad1)
{
instance_create_depth(x,y,-9999,obj_data)
}
if keyboard_check_pressed(vk_numpad2)
{
instance_create_depth(x,y,-9999,obj_inventaire)
}
if keyboard_check_pressed(ord("D"))
{
instance_create_depth(x,y,-9999,obj_menu)
}
}

if instance_exists(obj_textbox) || instance_exists(obj_menu) || instance_exists(obj_data) || instance_exists(obj_inventaire){can_create = false}           
else {can_create = true}