right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//e e e e e e e e e e e e e 
//collisions
if place_meeting(x + xspd, y, obj_tree) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_tree) == true
	{
	yspd = 0;
	}
if place_meeting(x + xspd, y, obj_bordertree) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_bordertree) == true
	{
	yspd = 0;
	}
if place_meeting(x + xspd, y, obj_water) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_water) == true
	{
	yspd = 0;
	}


x += xspd;
y += yspd;

//THIS IS ABRAHAM'S IT WILL BE EXTREMELY EXPERIMENTAL
//Trenten is awesome
