/// @description Insert description here
// You can write your code in this editor
global.fishing=false
fishstartpic = layer_sprite_get_id("Fishes", "fishing_player")
if global.fishing == false
{
	layer_set_visible("Fishes", true)
	global.fishing = true
	move_spd = 0;
	sprite_index = Pull_Back;
}
