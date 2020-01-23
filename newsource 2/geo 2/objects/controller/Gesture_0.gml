/// @description Insert description here
// You can write your code in this editor
if (gameover == true) {
	audio_stop_all();
	tentativi++;	
}

if (traguardo == true){
	audio_stop_all();
	tentativi = 0;
}
if(gameover == true || traguardo = true){
//creazione dello sprite
instance_create_layer(spawnx,spawny,"prova",object0);
gameover=false;
traguardo=false;
audio_play_sound(bot_m, 1,1);
}