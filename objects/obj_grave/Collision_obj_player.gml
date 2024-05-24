

if global.pause == true 
	{
	exit;
	}
	
if (global.player_spr==spr_player_left && keyboard_check(ord("E")))
	{
	create_textbox(" Grave", "They must've been loved", spr_grave);
	}