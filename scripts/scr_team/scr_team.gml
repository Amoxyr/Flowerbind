function scr_team(_player_2,_player_3,_player_4,_disband)
{
	
	if _disband = false
	{
		
		if !instance_exists(_player_2)
		{
			instance_create_layer( x, y, "player", _player_2)
		}
		if !instance_exists(_player_3)
		{
			instance_create_layer( x, y, "player", _player_3)
		}
		if !instance_exists(_player_4)
		{
			instance_create_layer( x, y, "player", _player_4)
		}
		
		global.team_exists = true
		global.player_2 = _player_2
		global.player_3 = _player_3
		global.player_4 = _player_4
		global.player_2_follow_distance = 20
		global.player_3_follow_distance = 40
		global.player_4_follow_distance = 60
		global.player_2.team = true
		global.player_3.team = false
		global.player_4.team = false
		
	}
	else
	{
		
		
		global.team_exists = false
		
		
	}
	
}



