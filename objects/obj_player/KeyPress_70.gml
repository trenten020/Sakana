/// @description Insert description here
// You can write your code in this editor

//fishstartpic = layer_sprite_get_id("Fishes", "fishing_player")
if global.fishing == false
{
	global.fishing = true
	layer_set_visible("Fishes", true)
	
	move_spd = 0;
	sprite_index = Pull_Back;
}
// testing for updates stuff