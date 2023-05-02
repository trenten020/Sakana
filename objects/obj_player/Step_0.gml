right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

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
if place_meeting(x + xspd, y, obj_bush) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_bush) == true
	{
	yspd = 0;
	}


x += xspd;
y += yspd;

//Trenten is awesome
//FISHING

if global.fishing == true
{
	//show_debug_message(global.fishprogress)
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
		global.fishprogress=global.fishprogress-5;
		}
	
	if global.fishprogress==0
		{
		global.fishing = false;
		move_spd=2;
		sprite_index=spr_player;
		}
}
