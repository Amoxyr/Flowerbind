
function scr_item_add(_item)
{

if array_length(obj_invsettings.inv) < obj_invsettings.inv_max
{
array_push(obj_invsettings.inv , _item)
}

}