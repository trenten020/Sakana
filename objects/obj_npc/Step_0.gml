//This makes timer start going down.
coolDownTimer --;

if (coolDownTimer <= 0 and to_spawnSpeachbub_Id != noone){

coolDownTimer = coolDownTime

	instance_destroy(to_spawnSpeachbub_Id)
	global.bubbleSpawn = false;
	to_spawnSpeachbub_Id = noone;
}
