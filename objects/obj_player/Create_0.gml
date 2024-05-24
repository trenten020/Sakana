///@description Timer, screen size, fishing timer, and player movement
//Window
window_set_min_height(900)
window_set_min_width(1050)

window_center();


randomize();
xspd = 0;
yspd = 0;

global.pause=false;

move_spd = 2;

layer_create(-10000, "Textbox");

#region //fishing
global.fishprogress=120;
global.fishing = false
global.fishdirection=0;
pullstate=0;

function fishtimer()
	{
	global.fishdirection=irandom(100);
	}
fishbattle=time_source_create(time_source_game, 3, time_source_units_seconds, fishtimer, [],-1 )
#endregion

//Daycycle
function worlddarkness()
	{
		if (darkness<40)
		{
		darkness=darkness+1;
		}
	}
daycycle=time_source_create(time_source_game, 600, time_source_units_seconds, worlddarkness,[], -1)


