right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

depth=-bbox_bottom;
global.playerxb=bbox_right;
global.playeryb=bbox_bottom;
global.playerx=x;
global.playery=y;
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
if place_meeting(x + xspd, y, obj_rock) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_rock) == true
	{
	yspd = 0;
	}
if place_meeting(x + xspd, y, obj_grave) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_grave) == true
	{
	yspd = 0;
	}
if place_meeting(x + xspd, y, clear_wall) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, clear_wall) == true
	{
	yspd = 0;
	}
if place_meeting(x + xspd, y, obj_widow) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_widow) == true
	{
	yspd = 0;
	}
x += xspd;
y += yspd;

//Trenten is awesome
global.pause = false;

if (global.pause == true)
{
move_spd = 2;
}
else 
{
move_spd = 2;
}


//FISHING


if global.fishing == true
{
	if right_key == true
		{
		pullstate=2;
		sprite_index = Pull_Right;
		}
		
	if down_key == true
		{
		pullstate=0;
		sprite_index = Pull_Back;
		}
		
	if left_key == true
		{
		pullstate=1;
		sprite_index = Pull_Left;
		}
	
	if pullstate==global.fishdirection%3
		{
		global.fishprogress=global.fishprogress-100;
		}
	
	if global.fishprogress==0
		{
		global.fishing = false;
		move_spd=2;
		sprite_index=spr_player;
		}
}

if global.fishing == false
{
time_source_destroy(fishbattle)
}