
if global.fishprogress==0
	{
	sprite_index=spr_salmon;
	
	draw_set_font(fSilver2);
	draw_set_colour(c_orange);
	draw_text(240, 200, "You caught a "+global.fish);
	}