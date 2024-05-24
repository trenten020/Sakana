if place_meeting(x + obj_player.xspd, y, obj_bordertree) == true

	{
	obj_player.xspd = 0;
	}
if place_meeting(x, y + obj_player.yspd, obj_bordertree) == true
	{
	obj_player.yspd = 0;
	}