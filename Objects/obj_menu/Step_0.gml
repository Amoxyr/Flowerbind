
up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
comfirm_key = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_enter)

if keyboard_check_pressed(ord("S"))
{
instance_destroy()
}





pos += down_key - up_key
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length - 1 }

 if comfirm_key
{
switch(pos)
{

case 0 :

instance_destroy()
instance_create_depth(x,y,-9999,obj_data)

break;

case 1 :

instance_destroy()
instance_create_depth(x,y,-9999,obj_inventaire) 





break;

case 2 :

break;

case 6 :

instance_destroy()
instance_create_depth(x,y,-9999,obj_config)

break;



}
}






