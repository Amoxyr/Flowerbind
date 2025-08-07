ini_open("file.ini")
if (image_index = 0 and keyboard_check_pressed(ord("A")))
{
	
	room_goto(global.start_room)
	var _instantiated = instance_create_layer(global.start_x,global.start_y,"Player",obj_aarch)
	global.new_game = false
	
}
ini_close()