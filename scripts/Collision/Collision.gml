// If player touches *blank*, player speed = 0
function Collision(object_in){
var object = object_in;
if place_meeting(obj_player.x + obj_player.xspd, obj_player.y, object) == true
	{
		show_debug_message("touched")
	obj_player.xspd = 0;
	}
if place_meeting(obj_player.x, obj_player.y + obj_player.yspd, object) == true
	{
	obj_player.yspd = 0;
	}
}