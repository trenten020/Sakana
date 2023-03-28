//FISHING
var fishspot = collision_rectangle(1180, 640, 1400, 650, obj_player, true, false);
if global.fishing == false && fishspot != noone
{
	global.fishing = true
	layer_set_visible("Fishes", true)
	
	move_spd = 0;
	sprite_index = Pull_Back;
}
