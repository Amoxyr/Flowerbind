
x = camera_get_view_x(view_camera[0]) + 150
y = camera_get_view_y(view_camera[0]) + 100


//__menu boxes__//

draw_sprite_ext(spr_menu,0,x - 100,y - 50,width/sprite_width,height/sprite_height,0,c_white,1)



draw_set_font(global.flower_font)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
for (var _i = 0;_i < op_length;_i++)
{
	var _c = c_white
	if pos == _i {_c = c_red}
	draw_text_color(x + op_border - 81,y + op_border + op_space*_i - 27,option[_i],_c,_c,_c,_c,1)	
}












