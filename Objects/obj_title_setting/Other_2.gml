global.start_room = rm_a_tas_de_feuilles
global.start_x = 160
global.start_y = 180

global.new_game = false

global.team = false
global.team_exists = false
global.enter_new_room = false

global.pc0 = 0 //Aarch
global.pc1 = 1 //Terry
global.pc2 = 2 //Nanashi
global.pc3 = 3 //Ballos


global.rm_0 = 0
global.rm_1 = 1
global.rm_2 = 2
global.rm_3 = 3
global.rm_4 = 4
global.rm_5 = 5
global.rm_6	= 6
global.rm_7 = 7
global.rm_8 = 8
global.rm_9 = 9
global.rm_11 = 11
global.rm_12 = 12
global.rm_13 = 13
global.rm_14 = 14

if file_exists("file.ini")
{
	
	ini_open("file.ini")
	global.start_room = ini_read_real("save1", "room", room)
	global.start_x = ini_read_real("save1", "x", 160)
	global.start_y = ini_read_real("save1", "y", 180)
	global.player_2 = ini_read_real("save1", "player2", global.pc1)
	global.player_3 = ini_read_real("save1", "player3", global.pc1)
	global.player_4 = ini_read_real("save1", "player4", global.pc1)
	global.player_2_follow_distance = ini_read_real("save1", "player2 distance", 40)
	global.player_3_follow_distance = ini_read_real("save1", "player3 distance", 40)
	global.player_4_follow_distance = ini_read_real("save1", "player4 distance", 40)
	global.team_exists = ini_read_string("save1", "team exists", "false")
	ini_close()
	
}

if (global.start_room == 0) and typeof(global.start_room) != "ref" {global.start_room = rm_a_tas_de_feuilles}
if (global.start_room == 1) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien}
if (global.start_room == 2) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_puzzle}
if (global.start_room == 3) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_puzzle_2}
if (global.start_room == 4) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_comerce}
if (global.start_room == 5) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_piece_entrainement}
if (global.start_room == 6) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_ruelle_sombre}
if (global.start_room == 7) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_centre}
if (global.start_room == 8) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_centre_stands}
if (global.start_room == 9) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_centre_piece_gateau}
if (global.start_room == 10) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_couloir}
if (global.start_room == 11) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_fontaine}
if (global.start_room == 12) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_couloir_sombre}
if (global.start_room == 13) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_pont}
if (global.start_room == 14) and typeof(global.start_room) != "ref" {global.start_room = rm_temple_ancien_sanctuaire}


if global.team_exists = true
{
//Second player
if (global.player_2 = 1){global.player_2 = obj_terry}
//Third player
if (global.player_3 = 1){global.player_3 = obj_terry}
//Fourth player
if (global.player_4 = 1){global.player_4 = obj_terry}
}
