comfirm_key = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_enter);
skip_key = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_shift);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0])+160;

if (setup == false) {
	

setup = true;
draw_set_font(global.flower_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var _p = 0; _p < page_number;_p++){
	
text_length[_p] = string_length(text[_p]);

text_x_offset[_p] = 10;
portrait_x_offset[_p] = 10;



if speaker_sprite[_p] == noone
{
text_x_offset[_p] = 10;
}

for (var _c = 0; _c < text_length[_p];_c++)
{
var _char_pos = _c+1;

char[_c, _p] = string_char_at(text[_p], _char_pos)

var _txt_up_to_char = string_copy(text[_p],1,_char_pos);
var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[_c,_p]);
if char[_c, _p] == " " {last_free_space = _char_pos+1};
if _current_txt_w - line_break_offset[_p] > line_width
{
line_break_pos[ line_break_num[_p] , _p ] = last_free_space;
line_break_num[_p]++;
var _txt_up_to_last_space = string_copy(text[_p],1,last_free_space);
var _last_free_space_string = string_char_at(text[_p],last_free_space);
line_break_offset[_p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
	
}
}

for (var _c = 0; _c < text_length[_p];_c++)
{

var _char_pos = _c+1;
var _txtb_x = textbox_x + text_x_offset[page] + border;
var _txtb_y = textbox_y + border;
var _txt_up_to_char = string_copy(text[_p],1,_char_pos);
var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[_c, _p]);
var _txt_line = 0
for (var _lb = 0;_lb < line_break_num[_p];_lb++)
{
if _char_pos >= line_break_pos[_lb,_p]
{
var _str_copy = string_copy(text[_p],line_break_pos[_lb,_p],_char_pos-line_break_pos[_lb,_p])
_current_txt_w = string_width(_str_copy)
_txt_line = _lb+1
}
}
char_x[_c,_p] = _txtb_x + _current_txt_w
char_y[_c,_p] = _txtb_y + _txt_line*line_sep
}
}
}

///__________ Text Typing ____________

if txt_pause_timer <= 0 
{
	if draw_char < text_length[page]{
	draw_char += text_speed
	draw_char = clamp(draw_char,0,text_length[page])
	var _check_char = string_char_at(text[page],draw_char);
	if _check_char == "." || _check_char == "," || _check_char == "!" || _check_char == "?" || _check_char == ":"
	{
	txt_pause_timer = txt_pause_time;
	}
	
}
}	
else
{
	txt_pause_timer--;
}




///__________ Keys ____________	
		
	
		
if comfirm_key and draw_char == text_length[page]{
	
	
if draw_char == text_length[page]{
	if page < page_number-1{
	page++
	draw_char = 0
}
else
{
	if option_number > 0
	{
	create_textbox(option_link_id[option_pos]);
	}
	instance_destroy();
	
}
}		
	

}
else if skip_key and draw_char != text_length[page]
{
	draw_char = text_length[page]
}

///__________ Drawing the text ____________

var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_image += txtb_image_spd
txtb_sprite_w = sprite_get_width(txtb_sprite[page]);
txtb_sprite_h = sprite_get_height(txtb_sprite[page]);

if speaker_sprite[page] != noone
{
sprite_index = speaker_sprite[page];
if draw_char == text_length[page]{image_index = 0}
var _speaker_x = textbox_x + portrait_x_offset[page];
var _speaker_y = textbox_y;
if speaker_side[page] == -1 {_speaker_x += sprite_width}
draw_sprite_ext(txtb_sprite[page],txtb_image,_speaker_x,_speaker_y - 67,250/sprite_width,250/sprite_height,0,c_white,1);
draw_sprite_ext(sprite_index,image_index,_speaker_x + 35,_speaker_y - 35,1,1,0,c_white,1);

}

draw_sprite_ext(txtb_sprite[page],txtb_image, _txtb_x,_txtb_y ,textbox_width/txtb_sprite_w,textbox_height/txtb_sprite_h,0,c_white,1);

if draw_char == text_length[page] && page == page_number - 1
{

///__________ Selecting the option ___________

option_pos += keyboard_check_pressed(vk_down ) - keyboard_check_pressed(vk_up)
option_pos = clamp(option_pos, 0,option_number-1)





///__________ Drawing the option ___________

var _op_space = 30;
var _op_bord = 4;

for (var _op = 0; _op < option_number;_op++)
{
var _op_width = string_width(option[_op]) + _op_bord*2 + 15

draw_sprite_ext(txtb_sprite[page],txtb_image,_txtb_x + 69,_txtb_y-_op_space*option_number+_op_space*_op,_op_width/txtb_sprite_w ,(_op_space-3)/txtb_sprite_h,0,c_white,1)

if option_pos == _op
{
draw_sprite(spr_soul_human, 0,_txtb_x + 75,textbox_y-_op_space*option_number+_op_space*_op + 10)
}

draw_text(_txtb_x  + _op_bord + 82,_txtb_y -_op_space*option_number + _op_space*_op + 4,option[_op])
}
}

for(var _c = 0;_c < draw_char;_c++)
{

var _float_y = 0;
if float_text[_c,page] == true
{
float_dir[_c,page] += -2;
_float_y = dsin(float_dir[_c,page]*4)
}

var _shake_x = 0;
var _shake_y = 0;
if shake_text[_c,page] == true
{
shake_timer[_c,page]--;
if shake_timer[_c,page] <= 0
{
shake_timer[_c,page] = irandom_range(1,2)
shake_dir[_c,page] = irandom(360)
_shake_x = lengthdir_x(1,shake_dir[_c,page]);
_shake_y = lengthdir_y(1,shake_dir[_c,page]);
}

}

draw_text_color(char_x[_c,page] + _shake_x - 1,char_y[_c,page] + _float_y + _shake_y ,char[_c,page],col_1[_c,page],col_2[_c,page],col_3[_c,page],col_4[_c,page],1);

}

if draw_char == text_length[page]
{
var _finish_x = textbox_x + 290
var _finish_y = textbox_y + 60
draw_sprite(finish_spr,0,_finish_x,_finish_y)

}




