///@description When you press 'e'

if global.pause == true 
	{
	exit;
	}
	
if (global.player_spr==spr_player_up && keyboard_check(ord("E")))
	{
	create_textbox(" Mailbox", "*It is empty*", spr_mailox);
	}
