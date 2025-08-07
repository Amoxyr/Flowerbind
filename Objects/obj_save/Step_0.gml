
if place_meeting(x ,y ,obj_aarch)
{

ini_open("file.ini")
ini_write_real("save1", "room", room_to_save)
ini_write_real("save1", "x", obj_aarch.x)
ini_write_real("save1", "y", obj_aarch.y)
ini_write_real("save1", "face", obj_aarch.face)

if global.team_exists = true
{
	
	ini_write_string("save1", "team exists", global.team_exists)
	
	if global.player_2 = obj_terry
	{
		ini_write_real("save1","player2",global.pc1)
	}
	
	if global.player_3 = obj_terry
	{
		ini_write_real("save1","player3",global.pc1)
	}
	
	if global.player_4 = obj_terry
	{
		ini_write_real("save1","player4",global.pc1)
	}
	
	ini_write_real("save1", "player2 distance", global.player_2_follow_distance)
	ini_write_real("save1", "player3 distance", global.player_3_follow_distance)
	ini_write_real("save1", "player4 distance", global.player_4_follow_distance)
	
}
ini_close()

}