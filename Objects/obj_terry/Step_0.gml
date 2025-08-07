if team = true
{
	
	sprite_index = spr_terry_down
	
}
else if team = true
{
	
	sprite_index = spr_terry_left
	
}
else if team = true
{
	
	sprite_index = spr_terry_up
	
}
else if team = true
{
	
	sprite_index = spr_terry_right
	
}

x[0] = round(x[0.1])
x[0] = round(y[0.1])

if team = true and obj_aarch.follow_points > 0
{
	
	if npc_mode = false
	if global.enter_new_room = true
	{
		if global.new_room_face = spr_aarch_down
		{
			sprite_index = spr_terry_down
			new_room_face = sprite_index
		}
		if global.new_room_face = spr_aarch_left
		{
			sprite_index = spr_terry_left
			new_room_face = sprite_index
		}
		if global.new_room_face = spr_aarch_up
		{
			sprite_index = spr_terry_up
			new_room_face = sprite_index
		}
		if global.new_room_face = spr_aarch_left
		{
			sprite_index = spr_terry_left
			new_room_face = sprite_index
		}
		if sprite_index != new_room_face
		{
			global.enter_new_room = false
		}
		
		if global.player_2 = self
		{
		switch(obj_aarch.past_face[global.player_2_follow_distance])
		{
			case spr_aarch_down : sprite_index = spr_terry_down break;
			case spr_aarch_left : sprite_index = spr_terry_left break;
			case spr_aarch_up : sprite_index = spr_terry_up break;
			case spr_aarch_right : sprite_index = spr_terry_right break;
		}
		
		if obj_aarch.player_x[global.player_2_follow_distance] != 0
		{
			x = obj_aarch.player_x[global.player_2_follow_distance]
			y = obj_aarch.player_y[global.player_2_follow_distance]
		}
		
		else if instance_exists(obj_transition)
		{
			
			x = obj_transition.target_x
			y = obj_transition.target_y
		}
		}
		else if global.player_3 = self
		{
		switch(obj_aarch.past_face[global.player_3_follow_distance])
		{
			case spr_aarch_down : sprite_index = spr_terry_down break;
			case spr_aarch_left : sprite_index = spr_terry_left break;
			case spr_aarch_up : sprite_index = spr_terry_up break;
			case spr_aarch_right : sprite_index = spr_terry_right break;
		}
		
		if obj_aarch.player_x[global.player_3_follow_distance] != 0
		{
			x = obj_aarch.player_x[global.player_3_follow_distance]
			y = obj_aarch.player_y[global.player_3_follow_distance]
		}
		
		else if instance_exists(obj_transition)
		{
			
			x = obj_transition.target_x
			y = obj_transition.target_y
		}
		}
		else if global.player_4 = self
		{
		switch(obj_aarch.past_face[global.player_4_follow_distance])
		{
			case spr_aarch_down : sprite_index = spr_terry_down break;
			case spr_aarch_left : sprite_index = spr_terry_left break;
			case spr_aarch_up : sprite_index = spr_terry_up break;
			case spr_aarch_right : sprite_index = spr_terry_right break;
		}
		
		if obj_aarch.player_x[global.player_4_follow_distance] != 0
		{
			x = obj_aarch.player_x[global.player_4_follow_distance]
			y = obj_aarch.player_y[global.player_4_follow_distance]
		}
		
		else if instance_exists(obj_transition)
		{
			
			x = obj_transition.target_x
			y = obj_transition.target_y
		}
		}
		if x != xprevious or y != yprevious
		{
			image_speed = 1
		}
		else
		{
			image_speed = 0
			image_index = 0
		}
	}
	
}

if team = false
{
	image_speed = 0
	npc_mode = true
	
}