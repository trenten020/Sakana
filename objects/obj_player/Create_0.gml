xspd = 0;
yspd = 0;

move_spd = 2;

global.fishing = false
global.fishdirection=0;
pullstate=0;
fishbattle=time_source_create(time_source_game, 7, time_source_units_seconds, global.fishdirection=global.fishdirection+1, [-1] )