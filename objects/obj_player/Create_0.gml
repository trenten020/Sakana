xspd = 0;
yspd = 0;

move_spd = 2;
layer_create(-10000, "Textbox");

global.fishing = false
global.fishdirection=0;
pullstate=0;

function fishtimer()
	{
	global.fishdirection=global.fishdirection+1;
	}
fishbattle=time_source_create(time_source_game, 7, time_source_units_seconds, fishtimer, [],-1 )
