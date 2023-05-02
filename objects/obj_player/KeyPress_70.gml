//FISHING MINIGAME
//Player animation and programming
var fishspot = collision_rectangle(1240, 576, 1260, 580, obj_player, true, false);
if global.fishing == false && fishspot != noone
{

	instance_create_layer(x, y, "fishes", Fishing_Line);

	global.fishing = true
	layer_set_visible("Fishes", true) //Layer that fish graphics will be on
	
	move_spd = 0;
	
	sprite_index = Pull_Back;
	global.fishprogress=1800;
	time_source_start(fishbattle);



}