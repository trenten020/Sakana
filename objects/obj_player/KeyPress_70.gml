/// @description ishing
//FISHING MINIGAME
//Player animation and programming
var fishspot = collision_rectangle(1496, 896, 1512, 900, obj_player, true, false);
if global.fishing == false && fishspot != noone
{
	
	global.fishprogress = 1800;
	global.fishing = true
	global.fishnum=floor(random(100));

	instance_create_layer(x, y, "fishes", Fishing_Line);
	layer_set_visible("Fishes", true) //Layer that fish graphics will be on
	sprite_index = Pull_Back;
	
	fishbattle=time_source_create(time_source_game, 3, time_source_units_seconds, fishtimer, [],-1 )
	time_source_start(fishbattle);
}
