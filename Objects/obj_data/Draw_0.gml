
x = camera_get_view_x(view_camera[0]) + 100
y = camera_get_view_y(view_camera[0]) + 50

draw_sprite(obj_tmsettings.tmember[obj_tmsettings.member_pos].sprite,0,x + 30,y - 22)
draw_sprite_ext(sprite_index,0,x + 47,y - 32,50/sprite_width,1,0,c_white,1)
draw_sprite_ext(sprite_index,0,x + 15,y - 10,85/sprite_width,1,0,c_white,1)
draw_sprite_ext(sprite_index,0,x + 15,y + 15,60/sprite_width,40/sprite_height,0,c_white,1)
draw_sprite_ext(sprite_index,0,x + 15,y + 57,60/sprite_width,40/sprite_height,0,c_white,1)
draw_sprite_ext(sprite_index,0,x + 80,y + 15,80/sprite_width,120/sprite_height,0,c_white,1)
draw_set_font(global.btl_font)
draw_sprite(obj_tmsettings.tmember[obj_tmsettings.member_pos].hp_icon,0,x + 17,y - 7)
draw_text(x + 25,y - 10,"HP" + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].hp) + "/" + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].hp_max))
draw_sprite_ext(obj_tmsettings.tmember[obj_tmsettings.member_pos].hp_max_bar,0,x + 17,y,obj_tmsettings.tmember[obj_tmsettings.member_pos].hp_max/2,1,0,c_white,1)
draw_sprite_ext(obj_tmsettings.tmember[obj_tmsettings.member_pos].hp_bar,0,x + 17,y,obj_tmsettings.tmember[obj_tmsettings.member_pos].hp/2,1,0,c_white,1)
draw_set_font(global.menu_font)
draw_text(x + 50,y - 25,obj_tmsettings.tmember[obj_tmsettings.member_pos].name)
draw_text(x + 25,y + 20,"lv " + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].hp))
draw_text(x + 25,y + 30,"bd " + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].bond))
draw_sprite(spr_suivant,0,x + 17,y + 40)
draw_text(x + 25,y + 40,"suiv " + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].suivant))
draw_sprite(spr_att,0,x + 17,y + 60)
draw_text(x + 25,y + 60,"att " + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].attack))
draw_sprite(spr_def,0,x + 17,y+ 70)
draw_text(x + 25,y + 70,"def " + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].defense))
draw_sprite(spr_shac,0,x + 17,y + 80)
draw_text(x + 25,y + 80,"shac " + string(obj_tmsettings.tmember[obj_tmsettings.member_pos].shacra))

draw_set_font(global.btl_font)

for(var _tm = 0;_tm < array_length(obj_tmsettings.tmember);_tm++)
{
	var _opmx = 86
	var _opmy = 32
	var _opmsep = 40
	var _border = 4
	var _width = 80
	var _line_width = _width - _border*2
	var _height = 2
	
	var _c = c_white
	if obj_tmsettings.member_pos = _tm{_c = c_red}
	draw_sprite_ext(spr_menu,0,x - _opmx + 18,y - _opmy + _opmsep*_tm,_line_width/sprite_width,_height - 0.5,0,c_white,1)
	draw_sprite(obj_tmsettings.tmember[_tm].sprite,0,x - _opmx + 2,y - _opmy + _opmsep*_tm + 10)
	draw_sprite(spr_lv,0,x - _opmx + 20,y - _opmy + _opmsep*_tm + 11)
	draw_sprite(spr_hp,0,x - _opmx + 20,y - _opmy + _opmsep*_tm + 19)
	draw_text_color(x - _opmx + 20,y - _opmy + _opmsep*_tm,obj_tmsettings.tmember[_tm].name,_c,_c,_c,_c,1)
	draw_text(x - _opmx + 28,y - _opmy + _opmsep*_tm + 9,"LV." + string(obj_tmsettings.tmember[_tm].amitie))
	draw_text(x - _opmx + 28,y - _opmy + _opmsep*_tm + 17,"HP" + string(obj_tmsettings.tmember[_tm].hp) + "/" + string(obj_tmsettings.tmember[_tm].hp_max))
}











