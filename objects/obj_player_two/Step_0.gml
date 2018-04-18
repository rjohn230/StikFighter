/// @description gravity
// You can write your code in this editor


on_fire= collision_circle(x,y,64,obj_fire,false,false);

if(on_fire)
{
	instance_destroy();
	instance_create_layer(x,y,"Instances",obj_stick_fire);	
}


// contorller logic
 left_stick_up= gamepad_axis_value(1,gp_axislv)<=-.99 && !keyboard_check(ord("W"));
 left_stick_down=gamepad_axis_value(1,gp_axislv)>=.99 && !keyboard_check(ord("S"));
 left_stick_left=gamepad_axis_value(1,gp_axislh)<=-.99 && !keyboard_check(ord("A"));
 left_stick_right=gamepad_axis_value(1,gp_axislh)>=.99 && !keyboard_check(ord("D"));
 
 x_button=gamepad_button_check_pressed(1,gp_face3) && !keyboard_check(ord("T"));
 y_button=gamepad_button_check_pressed(1,gp_face4) && !keyboard_check(ord("Y"));
 
 special_move_pressed=false;

left_flip=gamepad_axis_value(1,gp_axislh)<=-.50 && gamepad_axis_value(1,gp_axislv)<=-.50
right_flip=gamepad_axis_value(1,gp_axislh)>=.50 && gamepad_axis_value(1,gp_axislv)<=-.50


// attack collision booleans

left_punch_landed=(image_xscale==1 && true && collision_circle(x+21,y+4,5,obj_player,false,true)) || (image_xscale==-1 && true && collision_circle(x-21,y+4,5,obj_player,true,true));
right_punch_landed=(image_xscale==1 && true && collision_circle(x+30,y+2,5,obj_player,false,true)) || (image_xscale==-1 && true && collision_circle(x-30,y+2,5,obj_player,true,true));
uppercut_landed=(image_xscale==1 && true && collision_circle(x+16,y+1,5,obj_player,false,true)) || (image_xscale==-1 && true && collision_circle(x-16,y+1,5,obj_player,true,true));
front_kick_landed=(image_xscale==1 && true && collision_circle(x+22,y-11,5,obj_player,false,true)) || (image_xscale==-1 && true && collision_circle(x-22,y-11,5,obj_player,true,true));
leg_sweep_landed=(image_xscale==1 && true && collision_circle(x+16,y-26,5,obj_player,false,true)) || (image_xscale==-1 && true && collision_circle(x-16,y-26,5,obj_player,true,true));
head_kick_landed=(image_xscale==1 && true && collision_circle(x+21,y-7,5,obj_player,false,true)) || (image_xscale==-1 && true && collision_circle(x-21,y-7,5,obj_player,true,true));
side_kick_landed=(image_xscale==1 && true && collision_circle(x+17,y+3,5,obj_player,false,true)) || (image_xscale==-1 && true && collision_circle(x-17,y+3,5,obj_player,true,true));


air_kick_landed=false;
jumping_punch_landed=false;


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
		if(not_block_bellow)
		{
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
			hspeed=0;
			
		}
		
		break;
	} 
	case two_stance_state.kneeling:
	{
		if(!keyboard_check(ord("S")))
		{
			curr_stance_state=two_stance_state.standing;
			sprite_index=spr_idle;
		}
	 break;	
	}
	
	
	
}


 
 
 if(left_stick_up)
 {
	 event_perform(ev_keyboard,ord("W"))
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
	 event_perform(ev_keyboard,ord("W"))
	 event_perform(ev_keyboard,ord("A"))
 }
 if(right_flip)
 {
	 event_perform(ev_keyboard,ord("W"))
	 event_perform(ev_keyboard,ord("D"))
 }









