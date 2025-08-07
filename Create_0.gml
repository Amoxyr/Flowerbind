textbox_width = 300;
textbox_height = 75;
border = 6;
line_sep = 18;
line_width = textbox_width - border*2;
txtb_sprite[0] = spr_textbox;
txtb_image = 0;
txtb_image_spd =0;
txtb_snd[0] = snd_texte;
finish_spr = spr_soul_human

/// Le texte

page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
old_draw_char = 0;
text_speed = 1;


/// L'option

option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;
comfirm_key = comfirm_key
skip_key = skip_key


scr_set_default_for_text();
last_free_space = 0;
txt_pause_timer = 0
txt_pause_time = 15;









