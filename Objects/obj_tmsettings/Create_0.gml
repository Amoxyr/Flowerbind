
function scr_tmember(_nme,_spr,_am,_am_icon,_bd,_suiv,_hp,_hp_bar,_hp_max,_hp_max_bar,_hp_icon,_att,_def,_shac) constructor
{
name = _nme
sprite = _spr
amitie = _am
am_icon = _am_icon
bond = _bd
suivant = _suiv
hp = _hp
hp_bar = _hp_bar
hp_max = _hp_max
hp_max_bar = _hp_max_bar
hp_icon = _hp_icon
attack = _att
defense = _def
shacra = _shac
}


aarch = new scr_tmember("aarch",spr_aarch_icon,global.aarch_am,spr_amitie_aarch,global.a_cp,global.a_suiv,global.a_hp,spr_aarchhp,global.a_hp_max,spr_aarchhp_bar,spr_energy_aarch,global.a_att,global.a_def,global.a_shac)
pignon = new scr_tmember("pignon",spr_pignon_icon,global.dkid_am,spr_amitie_pignon,global.dk_cp,global.dk_suiv,global.dk_hp,spr_pignonhp,global.dk_hp_max,spr_pignonhp_bar,spr_energy_pignon,global.dk_att,global.dk_def,global.dk_shac)




tmember = array_create(0)
array_push(tmember,aarch)
array_push(tmember,pignon)
member_pos = 0


