xspd = 0;
yspd = 0;

face = 0

move_spd = 2;
walk_spd = 2.4;
run_spd = 4.6;

team_follow = false

ini_open("file.ini")
face = ini_read_real("save1","face",2)
if (face = 0){sprite_index = spr_aarch_right}
if (face = 1){sprite_index = spr_aarch_up}
if (face = 2){sprite_index = spr_aarch_left}
if (face = 3){sprite_index = spr_aarch_down}
ini_close()

follow_points = 100
for (follow_pos = follow_points -1; follow_pos >= 0; follow_pos--)
{
player_x[follow_pos] = x
player_y[follow_pos] = y
past_face[follow_pos] = sprite_index
}