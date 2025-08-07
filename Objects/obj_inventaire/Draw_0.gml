

x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])





draw_set_font(global.menu_font)

for (var _i = 0;_i < array_length(obj_invsettings.inv); _i++)
{

var _xx = 50
var _yy = 14
var _sep = 21
var _img = 0

if obj_invsettings.selected_item = _i
{
	_img = 1
	draw_sprite_ext(spr_menu,0,x + _xx + 118,y + _yy + _sep - 21,120/sprite_width,1,0,c_white,1)
	draw_text_ext(x + _xx + 120,y + _yy + _sep - 18,obj_invsettings.inv[_i].name_info,20,120)
	draw_set_font(global.btl_font)
	draw_sprite_ext(spr_menu,0,x + _xx + 118, y + _yy + _sep,120/sprite_width,1,0,c_white,1)
	draw_text_ext(x + _xx + 120,y + _yy + _sep + 5,obj_invsettings.inv[_i].info,16,60)
	draw_sprite_ext(spr_menu,0,x + _xx + 118, y + _yy + _sep + 21,120/sprite_width,100/sprite_height,0,c_white,1)
	draw_text_ext(x + _xx + 120,y + _yy + _sep + 25,obj_invsettings.inv[_i].description,16,114)
	draw_sprite_ext(spr_menu,0,x + _xx + 178, y + _yy + _sep + 125,3,3,0,c_white,1)
	draw_sprite(obj_invsettings.inv[_i].portrait,0,x + _xx + 200,y + _yy + _sep + 150)
	
}

draw_set_font(global.menu_font)

draw_sprite(obj_invsettings.inv[_i].sprite,_img,x + _xx + 30,y + _yy + +_sep*_i)

draw_sprite_ext(spr_menu,0,x + _xx + 51,y + _yy + _sep*_i,66/sprite_width,1,0,c_white,1)

draw_text_color(x + _xx + 53,y + _yy + _sep*_i + 5,obj_invsettings.inv[_i].name,obj_invsettings.inv[_i].col_1,obj_invsettings.inv[_i].col_1,obj_invsettings.inv[_i].col_2,obj_invsettings.inv[_i].col_2,1)
}


