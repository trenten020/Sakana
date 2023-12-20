///@description When you press 'e'
show_debug_message("collision found");

if (bbox_left<global.playerx && bbox_right>global.playerx)
{
	show_debug_message("made it");
	if (global.player_spr==spr_player_up && keyboard_check(ord("E")))
	{
		show_debug_message("E pressed");
		global.mailbox=true;
	}
}
