/// @description Text in Textbox
if (!instance_exists(oBoxName)) exit;

//set font
draw_set_font(fSilver);

//values

draw_text(oBoxName.x, oBoxName.y, name);

var _width = oBoxMessage.sprite_width;

draw_text_ext(oBoxMessage.x, oBoxMessage.y, message, -1, _width);

//draw Image

var _centerX = oBoxImage.x + oBoxImage.sprite_width / 2;
var _centerY = oBoxImage.y + oBoxImage.sprite_height / 2;
var _scaleX = oBoxImage.sprite_width / sprite_get_width(image);
var _scaleY = oBoxImage.sprite_height / sprite_get_height(image);

draw_sprite_ext(image, 0, _centerX, _centerY, _scaleX, _scaleY, 0, -1, 1); 
	
