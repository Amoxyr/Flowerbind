

/// Controles 

var _right_key = keyboard_check(vk_right);
var _down_key = keyboard_check(vk_down);
var _left_key = keyboard_check(vk_left);
var _up_key = keyboard_check(vk_up);

xspd = (_right_key - _left_key) * move_spd;
yspd = (_down_key - _up_key) * move_spd;




if keyboard_check(ord("S")) or keyboard_check(vk_shift)
{
move_spd = run_spd

}else{
move_spd = walk_spd

}



if instance_exists(obj_pause){
xspd = 0
yspd = 0
}


if place_meeting(x + xspd, y,obj_dbg_wall)
{
xspd = 0
}
if place_meeting( x, y + yspd,obj_dbg_wall)
{
yspd = 0
}

y += yspd
x += xspd

if xspd > 0{sprite_index = spr_aarch_right}
else if xspd < 0{sprite_index = spr_aarch_left}
else if yspd > 0{sprite_index = spr_aarch_down}
else if yspd < 0{sprite_index = spr_aarch_up}

if (xspd != 0 or yspd != 0)
{
image_speed = 1
}
else
{
image_speed = 0
image_index = 0
}

x[0] = round(x[0.1])
y[0] = round(y[0.1])

if (sprite_index = spr_aarch_right){face = 0}
if (sprite_index = spr_aarch_up){face = 1}
if (sprite_index = spr_aarch_left){face = 2}
if (sprite_index = spr_aarch_down){face = 3}

depth = -bbox_bottom ;

if place_meeting( x, y, obj_save)
{
	
	if (sprite_index = spr_aarch_right){face = 0}
	if (sprite_index = spr_aarch_up){face = 1}
	if (sprite_index = spr_aarch_left){face = 2}
	if (sprite_index = spr_aarch_down){face = 3}	
	
}

if global.team_exists = true
{
if x != xprevious or y != yprevious and !instance_exists(obj_transition)
{
	
	for (follow_pos = follow_points -1; follow_points > 0; follow_pos--)
	{
		
		player_x[follow_points] = player_x[follow_pos-1]
		player_y[follow_points] = player_y[follow_pos-1]
		
		past_face[follow_points] = past_face[follow_pos-1]
	}
	
	player_x[0] = x
	player_y[0] = y
	past_face[0] = sprite_index
}

if instance_exists(obj_transition) and obj_transition.team_warp = true
{
instance_create_layer( x, y, "Player", global.player_2)
}

global.player_2.team = true
obj_transition.team_warp = false
}