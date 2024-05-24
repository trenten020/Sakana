global.textboxSequence = -1;
///create textbox layer


function create_textbox (name, message, image) 
{
close_textbox();
global.pause = true
// create texbox instance
	var _textbox = instance_create_layer(0, 0, "Textbox", oTextbox); 

//createtextbox sequence 
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);
	global.textboxSequence = layer_sequence_create("Textbox", _camX, _camY, seqTextbox);
//Pass values
oTextbox.name = name;
oTextbox.message = message;
oTextbox.image = image;
// pause character 
	
}

function close_textbox () {
	
	layer_sequence_destroy(global.textboxSequence);
	instance_destroy(oTextbox);
	
// unpause character
	global.pause = false;
}
