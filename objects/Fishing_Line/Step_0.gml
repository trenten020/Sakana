if global.fishing==true
{

	layer_set_visible("Fishes", true)
	
	
	if global.fishdirection%3==0
		{
		x=global.playerx-10;
		y=global.playery-50;
		sprite_index=Fish_Pull_Forward;
		}
	if global.fishdirection%3==2
		{
		x=global.playerx-80;
		y=global.playery-40;
		sprite_index=Fish_Pull_Left;
		}
	if global.fishdirection%3==1
		{
		x=global.playerx+80;
		y=global.playery-40;
		sprite_index=Fish_Pull_Right;
		}
}

if global.fishing == false
layer_set_visible("Fishes", false)