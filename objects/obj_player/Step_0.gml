right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//collisions
if place_meeting(x + xspd, y, obj_wall) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_wall) == true
	{
	yspd = 0;
	}



x += xspd;
y += yspd;

//THIS IS ABRAHAM'S IT WILL BE EXTREMELY EXPERIMENTAL
//Trenten is awesome
