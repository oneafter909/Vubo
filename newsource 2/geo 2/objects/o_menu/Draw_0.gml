/// @description Insert description here
// You can write your code in this editor

var i = 0;
repeat(buttons){
	draw_set_font(font0);
	draw_set_halign(fa_center);
	
	draw_set_color(c_white);
	if (menu_index == i) draw_set_color(c_red);
	draw_text(menu_x+25, menu_y + button_h * i, button[i]);
	i++;	
}

