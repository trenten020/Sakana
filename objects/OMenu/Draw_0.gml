draw_sprite_stretched(sMenuBox,0,x-margin,y-margin,widthFull,heightFull)

draw_set_color(c_white);
draw_set_font(fSilver);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
for (a = 0;  a< (optionsCount + _desc); a++)
{
	draw_set_colour(c_white);
	if (a == 0) && (_desc)
	{
		draw_text(x, y, description)
	}
	else
	{
		var _str = options [a-_desc][0]
		if (hover == a - _desc)
		{
			draw_set_colour(c_yellow);
			_str = hovermarker+_str;
		}
		draw_text(x, y + a * heightLine, _str);
	}
	
}