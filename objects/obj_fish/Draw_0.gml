
if global.fishprogress==0
	{
	sprite_index=spr_salmon;
	x=global.playerx
	y=global.playery
	draw_set_font(fSilver2);
	draw_set_colour(c_orange);
	draw_text(x-60, y-40, "You caught a "+global.fish);
	}