/// @Istanze in movimento

if(dash == true){
	key_left = 0;
	key_right = 1.2;
}
if(dash==false)
{
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
}

//key_left = 0;//mettere 0 per rendere il giioco come Geometry Dash
key_jump = ev_gesture_tap;
//key_right = 0; //mettere 1.2 per rendere il gioco come Geometry Dash
var _move = key_right - key_left;
hsp= _move * walksp;
vsp = vsp + grv;


if (place_meeting(x,y+1,object1)) && (key_jump) {
vsp = -jumpsp	
image_angle -= 5;
}
if (image_angle % 90 != 0){
image_angle -= 5;	
}
//collisioni orizzontali

if(place_meeting(x+hsp,y,object1)){
	
	while (!place_meeting(x+sign(hsp),y,object1)) {
		x=x+sign(hsp);
	}
	hsp=0;
}


x=x+hsp;

//collisioni verticali
if(place_meeting(x,y+vsp,object1))
{
	while (!place_meeting(x,y+sign(vsp),object1)) {
		y = y + sign(vsp);
	}
	vsp=0;
}
y=y+vsp;

if(place_meeting(x+hsp,y,object3)){
audio_play_sound(schianto,2,false);
effect_create_below(ef_smoke, x+3, y-3, choose(0, 1, 2), c_gray);
effect_create_below(ef_smoke, x, y, choose(0, 1, 2), c_gray);
effect_create_below(ef_smoke, x-3, y+4, choose(0, 1, 2), c_gray);
audio_stop_sound(bot_m);
controller.gameover=true;
instance_destroy(object0);


}


if(place_meeting(x+hsp,y,object1)){
audio_play_sound(schianto,2,false);
effect_create_below(ef_smoke, x+3, y-3, choose(0, 1, 2), c_gray);
effect_create_below(ef_smoke, x, y, choose(0, 1, 2), c_gray);
effect_create_below(ef_smoke, x-3, y+4, choose(0, 1, 2), c_gray);
audio_stop_sound(bot_m);
controller.gameover=true;
instance_destroy(object0);

}

if (place_meeting(x+hsp,y, object5)){
	controller.traguardo=true;
instance_destroy(object0);
}



if (y>900){
	audio_stop_sound(bot_m);
	audio_play_sound(caduta,2,false);
	controller.gameover = true;
	instance_destroy(object0);
}