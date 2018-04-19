/// @description Insert description here
// You can write your code in this editor

 player_one_up= (gamepad_axis_value(0,gp_axislv)<=-.99) && !keyboard_check_pressed(vk_up) && free;
 player_one_down=(gamepad_axis_value(0,gp_axislv)>=.99) && !keyboard_check_pressed(vk_down) && free;
 player_one_select =(gamepad_button_check_pressed(0,gp_face1)) && !keyboard_check_pressed(vk_enter);
 
 
 if(player_one_up)
 {
	event_perform(ev_keypress,vk_up)	
	free=false;
	alarm[0]=30*.10;
 }
 
  if(player_one_down)
 {
	event_perform(ev_keypress,vk_down)	 
	free=false;
	alarm[0]=30*.10;
 }
  
  if(player_one_select)
 {
	event_perform(ev_keypress,vk_enter)	 
	free=false;
	
 }