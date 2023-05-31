/// @description Insert description here
if (!instance_exists(oBoxName)) exit;

//set font
draw_set_font(fSilver);

//values
var _name = "Joe";
var _message = "Hi how are you? How has your day been?";
var _image = spr_player;

draw_text(oBoxName.x, oBoxName.y, _name);

var _width = oBoxMessage.sprite_width;

draw_text_ext(oBoxMessage.x, oBoxMessage.y, _message, -1, _width);

//draw Image

var _centerX = oBoxImage.x + oBoxImage.sprite_width / 2;
var _centerY = oBoxImage.y + oBoxImage.sprite_height / 2;
var _scaleX = oBoxImage.sprite_width / sprite_get_width(_image);
var _scaleY = oBoxImage.sprite_height / sprite_get_height(_image);

draw_sprite_ext(_image, 0, _centerX, _centerY, _scaleX, _scaleY, 0, -1, 1); 
	
