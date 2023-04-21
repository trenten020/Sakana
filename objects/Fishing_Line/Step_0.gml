if global.fishing==true
{
	x=global.playerx;
	y=global.playery+20;
	
	draw_line(x, y, global.playerx, global.playery);
	
	layer_set_visible("Fishes", true)
	
	
	if global.fishdirection%3==0
		{
		sprite_index=Fish_Pull_Forward;
		}
	if global.fishdirection%3==2
		{
		sprite_index=Fish_Pull_Left;
		}
	if global.fishdirection%3==1
		{
		sprite_index=Fish_Pull_Right;
		}
}

if global.fishing == false
layer_set_visible("Fishes", false)