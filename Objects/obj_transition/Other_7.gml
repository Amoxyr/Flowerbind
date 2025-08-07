room_goto(target_rm);
obj_aarch.x = target_x
obj_aarch.y = target_y

if global.team_exists = true
{
	
	team_warp = true
	global.enter_new_room = true
	global.new_room_face = obj_aarch.sprite_index
	obj_aarch.player_x = -1
	obj_aarch.player_y = -1
	obj_aarch.past_face = -1
	obj_aarch.follow_points = 100
	
	for(obj_aarch.follow_pos = obj_aarch.follow_points -1; obj_terry.follow_pos >= 0; obj_terry.follow_pos--)
	{
	obj_aarch.player_x[obj_aarch.follow_pos] = x
	obj_aarch.player_y[obj_aarch.follow_pos] = y
	}
	for (obj_aarch.follow_pos = obj_aarch.follow_points; obj_aarch.follow_pos >= 0; obj_aarch.follow_pos += 48)
	{
	obj_aarch.past_face[obj_aarch.follow_pos] = obj_aarch.sprite_index
	
	}
}

if (facing = 0){obj_aarch.sprite_index = spr_aarch_right}
if (facing = 1){obj_aarch.sprite_index = spr_aarch_up}
if (facing = 2){obj_aarch.sprite_index = spr_aarch_left}
if (facing = 3){obj_aarch.sprite_index = spr_aarch_down}

image_speed = -1;