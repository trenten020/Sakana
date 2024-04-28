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

#region Fishing
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




//Trenten is awesome

//FISHING


if global.fishing == true
{
	move_spd = 0;
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
		time_source_destroy(fishbattle)
		move_spd=2;
		sprite_index=spr_player;
		}
}
#endregion 

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;
move_and_collide(xspd, yspd, tag_get_asset_ids("collides_with_player", asset_object));











