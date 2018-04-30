/// @description gravity
// You can write your code in this editor







// contorller logic
 left_stick_up= gamepad_axis_value(0,gp_axislv)<=-.99 && !keyboard_check_pressed(vk_up);
 left_stick_down=gamepad_axis_value(0,gp_axislv)>=.99 && !keyboard_check(vk_down);
 left_stick_left=gamepad_axis_value(0,gp_axislh)<=-.99 && !keyboard_check(vk_left);
 left_stick_right=gamepad_axis_value(0,gp_axislh)>=.99 && !keyboard_check(vk_right);
 
 x_button=gamepad_button_check_pressed(0,gp_face3) && !keyboard_check(ord("J"));
 y_button=gamepad_button_check_pressed(0,gp_face4) && !keyboard_check(ord("K"));
 
  start_button=gamepad_button_check_pressed(0,gp_start) && !keyboard_check_pressed(vk_alt);
 

 
 special_move_pressed=gamepad_button_check_pressed(0,gp_face1)&& gamepad_button_check_pressed(0,gp_face2);

left_flip=gamepad_axis_value(0,gp_axislh)<=-.50 && gamepad_axis_value(0,gp_axislv)<=-.50
right_flip=gamepad_axis_value(0,gp_axislh)>=.50 && gamepad_axis_value(0,gp_axislv)<=-.50

stick_uppercut= gamepad_axis_value(0,gp_axislv)>=.99 && gamepad_button_check_pressed(0,gp_face3)

// attack collision booleans

in_air_collide= collision_circle(x,y,32,obj_player_two,false,true);


//gravity code
not_block_bellow =place_empty(x,y+1);


if(!not_block_bellow)
{
	
	gravity=0;
}
else
{

gravity=1;
}



//where the player faces
if(instance_exists(obj_player_two)){
	if(obj_player_two.x >= x && !not_block_bellow){
		image_xscale = 1;
	}else if(obj_player_two.x < x && !not_block_bellow){
		image_xscale = -1;
	}
}

switch curr_stance_state

{
	case stance_state.standing:
	{
		
		break;
	}
	
	case stance_state.jumping:
	{
			free_fall= vspeed<=0;
		if(free_fall)
		{
			if(in_air_collide)
			{
				if(image_xscale==-1)x=x+5;
				else x=x-5
				}
			curr_stance_state=stance_state.jumping;
		
		if (  (keyboard_check(vk_left) ||left_flip ) && !flipped)
		{
			inairflip();
			flipped=true;
		}
		else if( (keyboard_check(vk_right) || right_flip ) && !flipped)
			{
				inairflip();
				flipped=true;
			}
		}
		else
		{
			curr_stance_state=stance_state.standing;
			flipped=false;
			
			
		}
		
		break;
	} 
	case stance_state.kneeling:
	{
		if(!keyboard_check(vk_down))
		{
			curr_stance_state=stance_state.standing;
			sprite_index=idle;
		}
	 break;	
	}
	
	
	case stance_state.dying:
	{
		obj_battle_controller.player_one_hp-=5;
		break;
	}
	
	case stance_state.blocking:
	{
		shield_hp-=.015;
		if(shield_hp<=.30 || !keyboard_check(vk_shift))
		{
			curr_stance_state=stance_state.standing;
			instance_destroy(obj_shield);
			sprite_index=idle;
		}
		else {
				with(obj_shield)
	{
		sprite_index=obj_player.shield;	
		x=obj_player.x;
		y=obj_player.y;
		image_xscale=obj_player.shield_hp;
		image_yscale=obj_player.shield_hp;
		
	}
		}
	
	 break;	
	}
	
}

// shield regen
if(shield_hp<1) shield_hp+=.005;

if(shield_hp>1)shield_hp=1;
 

 if(left_stick_up)
 {
	 event_perform(ev_keypress,vk_up)
 }
 
 
  if(left_stick_down)
 {
	 event_perform(ev_keyboard,vk_down)
 }
 
  if(left_stick_left)
 {
	 event_perform(ev_keyboard,vk_left)
 }
 
  if(left_stick_right)
 {
	event_perform(ev_keyboard,vk_right) 
 }
  if(x_button)
 {
	 event_perform(ev_keypress,ord("J"))
 }
  if(y_button)
 {
	  event_perform(ev_keypress,ord("K"))
 }
  if(special_move_pressed)
 {
	// add special	 
 }

if(left_flip)
 {
	 event_perform(ev_keypress,vk_up)
	 event_perform(ev_keyboard,vk_left)
 }
 if(right_flip)
 {
	 event_perform(ev_keypress,vk_up)
	 event_perform(ev_keyboard,vk_right)
 }
 
  if(stick_uppercut)
 {
	 event_perform(ev_keyboard,vk_down)
	 event_perform(ev_keyboard,ord("J"))
 }
 
   if(start_button)
 {
	 event_perform(ev_keypress,vk_alt)
	
 }
 
    if(special_move_pressed)
 {
	 event_perform(ev_keypress,ord("P"));
	
 }
 
     if(gamepad_button_check(0,gp_shoulderrb))
 {
	 event_perform(ev_keyboard,vk_shift);
	
 }
