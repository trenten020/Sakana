//FISHING MINIGAME
//Player animation and programming
var fishspot = collision_rectangle(1496, 896, 1512, 900, obj_player, true, false);
if global.fishing == false && fishspot != noone
{

	instance_create_layer(x, y, "fishes", Fishing_Line);

	global.fishing = true
	layer_set_visible("Fishes", true) //Layer that fish graphics will be on
	
	move_spd = 0;
	
	sprite_index = Pull_Back;
	
	time_source_start(fishbattle);



}