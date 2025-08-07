
function create_item(_spr,_nme,_ninfo,_info,_port,_desc,_effect,_col1,_col2) constructor
{

sprite = _spr
name = _nme
name_info = _ninfo
info = _info
portrait = _port
description = _desc
effect = _effect
col_1 = _col1
col_2 = _col2
}






global.item_list = 
{
star_candy : new create_item(spr_star_candy,"gat. etoile","Gateau Etoile","+10.pv",spr_portrait_star_candy,"Une etoile au gout de caramel!",function(){obj_tmsettings.tmember[target].hp += 10},c_white,c_red),
green_flan : new create_item(spr_green_flan,"flan vert","Flan Vert","+20.pv",spr_portrait_green_flan,"Un flan a une creme fait a partir d'un feu vert !",function(){array_delete(inv,selected_item,1)},c_white,c_green),
green_croissant : new create_item(spr_green_croissant,"crois. vert","Croissant Vert","+20.pv",spr_portrait_green_flan,"Un croissant faits a partir d'un feu vert !",function(){obj_tmsettings.tmember[obj_tmsettings.member_pos].energy += 20;array_delete(inv,selected_item,1)},c_white,c_green),
green_donut : new create_item(spr_green_croissant,"donut vert","Donut Vert","+20.pv",spr_portrait_green_donut,"Un donut a une creme faits a partir d'un feu vert !",function(){obj_tmsettings.tmember[obj_tmsettings.member_pos].energy += 20;array_delete(inv,selected_item,1)},c_white,c_green),
ghost_apple : new create_item(spr_ghost_apple,"pomme ftome","Pomme Fantome","+16.pv",spr_portrait_ghost_apple,"Une pomme fait pour les fantomes , elle passe pas par le corps !",function(){obj_tmsettings.tmember[obj_tmsettings.member_pos].energy += 16;array_delete(inv,selected_item,1)},c_white,c_gray),
sun_cake : new create_item(spr_sun_cake,"gateau sol.","Gateau Solaire","+15.pv",spr_portrait_sun_cake,"Un gateau a la vannile , faits a partir d'un soleil.",function(){obj_tmsettings.tmember[obj_tmsettings.member_pos].energy += 15;array_delete(inv,selected_item,1)},c_white,c_yellow),
pawsicle : new create_item(spr_pawsicle,"pawsicle","Pawsicle","+20.pv",noone,"Une glace à l'eau en forme de patte de renard",function(){obj_tmsettings.tmember[obj_tmsettings.member_pos].energy += 20;array_delete(inv,selected_item,1)},c_white,c_red),
tension_drunks : new create_item(spr_power_drunks,"tens. drks","Tension Drunks","+50.pt",spr_portrait_power_drunks,"Une canette de soda de marque `Power Drunks` !",function(){array_delete(inv,selected_item,1)},c_white,c_orange),
galacto_pilk : new create_item(spr_pyro_pilk,"pyro milk","Pyro Milk","+10.pv",spr_portrait_star_candy,"Une bouteille d'un lait de marque `Pyro Pilk` . Le feu du zenith !",function(){obj_tmsettings.tmember[obj_tmsettings.member_pos].energy += 10;array_delete(inv,selected_item,1)},c_white,c_maroon)
}

target = 0
selected_item = 0

inv = array_create(0)
array_push(inv,global.item_list.star_candy)
array_push(inv,global.item_list.tension_drunks)
inv_max = 9