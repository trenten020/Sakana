depth=-10000; 

/*Need to create seperate fish generator for when story progresses and fish*/

if global.fishnum>=90
	{
	global.fish = "Salmon";	
	}
	else if global.fishnum>=60
		{
		global.fish = "Trout"
		}
		else if global.fishnum>=40
			{
			global.fish = "Bass";
			}
			else if global.fishnum>=20
				{
				global.fish = "Sturgeon";
				} 
				else if global.fishnum>=10
					{
					global.fish = "Carp";
					}
					else if global.fishnum>=5
						{
						global.fish = "Pikeminnow";
						}
						else if global.fishnum>=2
							{
							global.fish = "Catfish";
							}
							else if global.fishnum>=1
								{
								global.fish = "Letter";
								}
if global.fishprogress==0
	{
	x=global.playerx;
	y=global.playery;
//	global.fishprogress=1800;
	}
if global.fishprogress > 0
{

}