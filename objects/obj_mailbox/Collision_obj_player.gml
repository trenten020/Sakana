if( bbox_left<global.playerx)
{
	if( bbox_right>global.playerx && object_get_sprite(obj_player)==spr_player_up)
	{
		create_textbox();	
	}
}
