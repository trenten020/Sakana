///@description When you press 'e'

if (bbox_left<global.playerx && bbox_right>global.playerx)
{
	if (sprite_index==spr_player_up && keyboard_check(ord("E")==true))
	{
		global.mailbox=true;
	}
}
else 
{
	global.mailbox=false;
}