/// @description Insert description here
// You can write your code in this editor

//set timer to time again.
coolDownTimer = coolDownTime;

//If statement
if (to_spawnSpeachbub_Id == noone){
	
var SpeechBubble = instance_create_layer(x, y - sprite_height,"Instances", obj_SpeechBub);
	bubbleSpawn = true;
	
	
	to_spawnSpeachbub_Id = SpeechBubble.id;
	
	SpeechBubble.set_imageIndex = 1;
	
}
