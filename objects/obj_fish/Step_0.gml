depth=-10000; 

if global.fishnum==1
	{
	global.fish = "salmon";	
	}
if global.fishprogress==0
	{
	show_message_async("You caught a " + global.fish);
	x=global.playerx;
	y=global.playery;
	}
