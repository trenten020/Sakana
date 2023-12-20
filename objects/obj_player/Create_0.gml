///@description Timer, screen size, fishing timer, and player movement

window_set_size(1050, 900);
window_center();
randomize();
xspd = 0;
yspd = 0;

global.pause=false;
move_spd = 2;
layer_create(-10000, "Textbox");

global.fishprogress=1800;
global.fishing = false
global.fishdirection=0;
pullstate=0;

function fishtimer()
	{
	global.fishdirection=global.fishdirection+1;
	}
fishbattle=time_source_create(time_source_game, 3, time_source_units_seconds, fishtimer, [],-1 )
