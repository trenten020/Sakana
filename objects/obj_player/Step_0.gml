if global.pause==true
{
	move_spd=0;
}
else
{
	move_spd=2;
}

var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));
var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if right_key==true && global.fishing==false
{
sprite_index= spr_player_right;	
}
if left_key==true && global.fishing==false
{
sprite_index= spr_player_left;	
}
if up_key==true && global.fishing==false
{
sprite_index= spr_player_up;	
}
if down_key==true && global.fishing==false
{
sprite_index= spr_player;	
}

depth=-bbox_bottom;
global.playerxb=bbox_right;
global.playeryb=bbox_bottom;
global.playerx=x;
global.playery=y;
global.player_spr=sprite_index;
//collisions
/*
blocked = function(i, global.collisions)
{
    if place_meeting(x + xspd, y, global.collisions[i]) == true

	{
	xspd = 0;
	}
	if place_meeting(x, y + yspd, global.collisions[i]) == true
	{
	yspd = 0;
	};
}
*/

if place_meeting(x + xspd, y, obj_tree) == true

	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_tree) == true
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
if place_meeting(x + xspd, y, obj_cabin) == true

	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_cabin) == true
	{
	yspd = 0;
	}
	
move_and_collide(xspd, yspd, layer_get_all_elements("Collision_Instances"));
//Trenten is awesome

//FISHING


if global.fishing == true
{
	move_spd=0;
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

if global.fishing == false
{
time_source_destroy(fishbattle)
}