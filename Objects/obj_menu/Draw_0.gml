
x = camera_get_view_x(view_camera[0]) + 30
y = camera_get_view_y(view_camera[0]) + 20


//__menu boxes__//

draw_sprite_ext(sprite_index,0,x,y,width/sprite_width,height/sprite_height,0,c_white,1)

//__menu icons__//

draw_sprite(spr_donnees,0,x - 20,y)
draw_sprite(spr_objet,0,x - 20,y + 20)
draw_sprite(spr_equipement,0,x - 20,y + 40)
draw_sprite(spr_action,0,x - 20,y + 60)
draw_sprite(spr_journal,0,x - 20,y + 80)
draw_sprite(spr_telephone,0,x - 20,y + 100)
draw_sprite(spr_config,0,x - 20,y + 120)

draw_set_font(global.menu_font)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
for (var _i = 0;_i < op_length;_i++)
{
	var _c = c_white
	if pos == _i {_c = c_red}
	draw_text_color(x + op_border,y + op_border + op_space*_i,option[_i],_c,_c,_c,_c,1)	
}










