var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p1 = 1
var _p2 = 2
var _p3 = 4
var _p4 = 1
var _p5 = 1
var _p6 = 2

draw_sprite_tiled(spr_bg_temple_ancien_sky,0,_camx,_camy)

draw_sprite_tiled(spr_bg_temple_ancien_ancient_citadel,0,_camx*_p6,_camy)

draw_sprite_tiled(spr_bg_temple_ancien_ancient_castle,0,_camx*_p5,_camy)

draw_sprite_tiled(spr_bg_temple_ancien_main_citadel,0,_camx*_p4,_camy)

draw_sprite_tiled(spr_bg_temple_ancien_appart,0,_camx*_p3,_camy)

draw_sprite_tiled(spr_bg_temple_ancien_second_appart,0,_camx*_p2,_camy)

draw_sprite_tiled(spr_bg_temple_ancien_main_appart,0,_camx*_p1,_camy)



