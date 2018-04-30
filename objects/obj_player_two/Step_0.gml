/// @description gravity
// You can write your code in this editor

in_air_collide= collision_circle(x,y,32,obj_player,false,true);


// contorller logic
 left_stick_up= gamepad_axis_value(1,gp_axislv)<=-.99 && !keyboard_check_pressed(ord("W"));
 left_stick_down=gamepad_axis_value(1,gp_axislv)>=.99 && !keyboard_check(ord("S"));
 left_stick_left=gamepad_axis_value(1,gp_axislh)<=-.99 && !keyboard_check(ord("A"));
 left_stick_right=gamepad_axis_value(1,gp_axislh)>=.99 && !keyboard_check(ord("D"));
 
 x_button=gamepad_button_check_pressed(1,gp_face3) && !keyboard_check(ord("T"));
 y_button=gamepad_button_check_pressed(1,gp_face4) && !keyboard_check(ord("Y"));
 
 special_move_pressed=gamepad_button_check_pressed(1,gp_face1)&& gamepad_button_check_pressed(1,gp_face2);

left_flip=gamepad_axis_value(1,gp_axislh)<=-.50 && gamepad_axis_value(1,gp_axislv)<=-.50
right_flip=gamepad_axis_value(1,gp_axislh)>=.50 && gamepad_axis_value(1,gp_axislv)<=-.50


// attack collision booleans




//gravity code
not_block_bellow = place_empty(x,y+1);


if(!not_block_bellow)
{
	
	gravity=0;
}
else
{

gravity=1;
}



//where the player faces
if(instance_exists(obj_player)){
	if(obj_player.x >= x && !not_block_bellow){
		image_xscale = 1;
	}else if(obj_player.x < x && !not_block_bellow){
		image_xscale = -1;
	}
}

switch curr_stance_state

{
	case two_stance_state.standing:
	{
		
		break;
	}
	
	case two_stance_state.jumping:
	{
					free_fall= vspeed<=0;
		if(free_fall)
		{
						if(in_air_collide)
			{
				if(image_xscale==-1)x=x+5;
				else x=x-5
				}
			curr_stance_state=two_stance_state.jumping;
		
		if( (keyboard_check(ord("A")) || left_flip) && !flipped)
		{
			inairflip_two();
			flipped=true;
		}
		else if( (keyboard_check(ord("D")) ||right_flip)  && !flipped)
			{
				inairflip_two();
				flipped=true;
			}
		}
		else
		{
			curr_stance_state=two_stance_state.standing;
			flipped=false;
			
			
		}
		
		break;
	} 
	case two_stance_state.kneeling:
	{
		if(!keyboard_check(ord("S")))
		{
			curr_stance_state=two_stance_state.standing;
			sprite_index=idle;
		}
	 break;	
	}
	
		case two_stance_state.dying:
	{
		obj_battle_controller.player_two_hp-=5;
		break;
	}
	
	
	case two_stance_state.blocking:
	{
		shield_hp-=.015;
		if(shield_hp<=.30 || !keyboard_check(vk_space))
		{
			curr_stance_state=two_stance_state.standing;
			instance_destroy(obj_shield_two);
			sprite_index=idle;
		}
		else {
				with(obj_shield_two)
	{
	   	sprite_index=obj_player_two.shield;	
		x=obj_player_two.x;
		y=obj_player_two.y;
		image_xscale=obj_player_two.shield_hp;
		image_yscale=obj_player_two.shield_hp;
		
	}
		}
	
	 break;	
	}
	
}

if(shield_hp<1) shield_hp+=.005;

if(shield_hp>1)shield_hp=1;
 
 
 if(left_stick_up)
 {
	 event_perform(ev_keypress,ord("W"))
 }
 
 
  if(left_stick_down)
 {
	 event_perform(ev_keyboard,ord("S"))
 }
 
  if(left_stick_left)
 {
	 event_perform(ev_keyboard,ord("A"))
 }
 
  if(left_stick_right)
 {
	event_perform(ev_keyboard,ord("D"))
 }
  if(x_button)
 {
	 event_perform(ev_keypress,ord("T"))
 }
  if(y_button)
 {
	  event_perform(ev_keypress,ord("Y"))
 }
  if(special_move_pressed)
 {
	// add special	 
 }
 
if(left_flip)
 {
	 event_perform(ev_keypress,ord("W"))
	 event_perform(ev_keyboard,ord("A"))
 }
 if(right_flip)
 {
	 event_perform(ev_keypress,ord("W"))
	 event_perform(ev_keyboard,ord("D"))
 }
 
     if(special_move_pressed)
 {
	 event_perform(ev_keypress,ord("R"));
	
 }
