/// @controllo del gioco globalmente
// You can write your code in this editor
money=0;
tentativi = 0;
gameover=false;
traguardo = false;
spawnx = 110;
spawny = 637;
//creazione dello sprite
instance_create_layer(spawnx,spawny,"prova",object0);
audio_play_sound(bot_m, 1,1);