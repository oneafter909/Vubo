/// @description Insert description here
// You can write your code in this editor
switch(menu_index){
case 0:
room_goto(1);
break;
case 1:
if(dash==false){
dash = true	
}
else{
dash=false;
}
break;

case 2:
game_end();
break;

}