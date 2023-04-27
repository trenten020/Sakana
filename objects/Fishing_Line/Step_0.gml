if global.fishing==true
{
	layer_set_visible("Fishes", true)
	
	if global.fishdirection%3==0
		{
		x=global.playerx;
		y=global.playery-80;
		sprite_index=Fish_Pull_Forward;
		}
	if global.fishdirection%3==2
		{
		x=global.playerx-130;
		y=global.playery-40;
		sprite_index=Fish_Pull_Left;
		}
	if global.fishdirection%3==1
		{
		x=global.playerx+130;
		y=global.playery-40;
		sprite_index=Fish_Pull_Right;
		}
}

if global.fishing == false
layer_set_visible("Fishes", false)