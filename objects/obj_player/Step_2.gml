/// fishing minigame start
// You can write your code in this editor
//layer_sprite_get_id(layer_id, sprite_element_name)

fishstartpic = layer_sprite_get_id("Fishes", "fishing_player")
if keyboard_check(ord("f")) and global.fishing == false
{
	layer_set_visible("Fishes", true)
	global.fishing = true
	move_spd = 0;
	layer_sprite_change(fishstartpic, Pull_Back)
	
}