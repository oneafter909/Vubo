/// @description Insert description here
// You can write your code in this editor

menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menu_index += menu_move;
if(menu_index < 0) menu_index = buttons - 1; //torna indietro. Birichino.
if(menu_index > buttons -1) menu_index = 0; //torna avanti. Birichino.

if(menu_index != ultimosel) audio_play_sound(ding,1,false); 

ultimosel = menu_index;