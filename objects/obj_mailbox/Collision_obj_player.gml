///@description When you press 'e'

if (bbox_left<global.playerx && bbox_right>global.playerx)
{
	
	if (global.player_spr==spr_player_up && keyboard_check(ord("E")))
	{
		if (!instance_exists(oBoxName)) exit;
	}
	else if (global.player_spr==spr_player_up && keyboard_check(ord("E")))
	{
		create_textbox(" Mailbox", "*It is empty*", spr_mailox);
	}
}
