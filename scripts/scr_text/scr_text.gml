
function scr_set_default_for_text(){
line_break_pos[0,page_number] = 999;
line_break_num[page_number] = 0;
line_break_offset[page_number] = 0;

for (var _c = 0;_c < 500; _c++)
{
///__coloured text__
col_1[_c, page_number] = c_white;
col_2[_c, page_number] = c_white;
col_3[_c, page_number] = c_white;
col_4[_c, page_number] = c_white;

///___text effects___
//__floating text

float_text[_c,page_number] = 0;
float_dir[_c,page_number] = _c*20;

//__shaking text__

shake_text[_c,page_number] = 0;
shake_dir[_c,page_number] = irandom(332);
shake_timer[_c,page_number] = irandom(4);

}

txtb_sprite[page_number] = spr_textbox;
speaker_sprite[page_number] = noone;
speaker_side[page_number] = 1
txtb_nametag[page_number] = noone;
txtb_snd[page_number] = snd_texte;
}

function scr_text_color(_start,_end,_col_1,_col_2,_col_3,_col_4)
{

for (var _c = _start; _c <= _end; _c++)
	{
	col_1[_c, page_number-1] = _col_1
	col_2[_c, page_number-1] = _col_2
	col_3[_c, page_number-1] = _col_3
	col_4[_c, page_number-1] = _col_4
	}
}
	
function scr_text_float(_start,_end)
{

for (var _c = _start; _c <= _end; _c++)
{
float_text[_c,page_number-1] = true
}
}

function scr_text_shake(_start,_end)
{

for (var _c = _start; _c <= _end; _c++)
{
shake_text[_c,page_number-1] = true
}
}

function scr_text(_text){

scr_set_default_for_text();

text[page_number] = _text;

if argument_count > 1
{
	
	switch(argument[1])
    {
     
	 
	 //Aarch
	 
	 case "Aarch" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Afraid" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_afraid
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Blushing" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_blushing
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Dissapointed" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_dissapointed
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Furious" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_furious
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Left" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_look_left
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Right" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_look_right
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Mad" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_mad
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Sad" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_sad
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Smile" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_smile
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 case "Aarch - Think" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_think
	 txtb_sprite[page_number] = noone
	 
	 break;
	 
	 case "Aarch - Wink" :
	 
	 speaker_sprite[page_number] = spr_portrait_aarch_wink
	 txtb_sprite[page_number] = spr_textbox_aarch
	 
	 break;
	 
	 // Spaatch
	 
	 case "Spaatch" :
	 
	 speaker_sprite[page_number] = spr_portrait_spaatch
	 txtb_sprite[page_number] = spr_textbox_spiitcherre
	 
	 break;
	 
	 case "Anton" :
	 
	 speaker_sprite[page_number] = spr_portrait_anton
	 txtb_sprite[page_number] = spr_textbox_anton
	 txtb_nametag[page_number] = spr_anton_nametag
	 
	 break;
	 
	 case "Cosmocat" :
	 
	 speaker_sprite[page_number] = spr_portrait_chacosmique
	 txtb_sprite[page_number] = spr_textbox_anton
	 
	 break;
	 
	 case "Star Candy" :
	 
	 speaker_sprite[page_number] = spr_portrait_star_candy
	 txtb_sprite[page_number] = spr_textbox_item
	 
	 break;

	}
}

page_number++;
}

function scr_option(_option, _link_id){

option[option_number] = _option
option_link_id[option_number] = _link_id

option_number++
}

function create_textbox(_text_id)
{

with (instance_create_depth(x,y,-9999,obj_textbox))
	   {
	   scr_dialog_text(_text_id)
	   }

}