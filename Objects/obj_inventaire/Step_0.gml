down_key = keyboard_check_pressed(vk_down)
up_key = keyboard_check_pressed(vk_up)
comfirm_key = keyboard_check_pressed(ord("A"))
cancel_key = keyboard_check_pressed(ord("S"))


if keyboard_check_pressed(ord("S")){instance_destroy()}




obj_invsettings.selected_item += down_key - up_key
if obj_invsettings.selected_item >= array_length(obj_invsettings.inv){obj_invsettings.selected_item = 0}
if obj_invsettings.selected_item < 0{obj_invsettings.selected_item = array_length(obj_invsettings.inv) - 1}



if obj_invsettings.selected_item != -1
{
if comfirm_key
{
for(var _tm = 0;_tm < array_length(obj_tmsettings.tmember);_tm++)
{

var _opmx = 86
	var _opmy = 32
	var _opmsep = 40
	var _border = 4
	var _width = 80
	var _line_width = _width - _border*2
	var _height = 2

	draw_sprite(obj_tmsettings.tmember[obj_tmsettings.member_pos].sprite,0,x - _opmx + 18,y - _opmy + _opmsep*_tm + 10 )



}
}
}














