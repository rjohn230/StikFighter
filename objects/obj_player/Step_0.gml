/// @description gravity
// You can write your code in this editor

// attack collision booleans


left_punch_landed=(image_xscale==1 && true && collision_circle(x+21,y+4,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-21,y+4,5,obj_player_two,true,true));
right_punch_landed=(image_xscale==1 && true && collision_circle(x+30,y+2,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-30,y+2,5,obj_player_two,true,true));
uppercut_landed=(image_xscale==1 && true && collision_circle(x+16,y+1,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-16,y+1,5,obj_player_two,true,true));
front_kick_landed=(image_xscale==1 && true && collision_circle(x+22,y-11,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-22,y-11,5,obj_player_two,true,true));
leg_sweep_landed=(image_xscale==1 && true && collision_circle(x+16,y-26,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-16,y-26,5,obj_player_two,true,true));
head_kick_landed=(image_xscale==1 && true && collision_circle(x+21,y-7,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-21,y-7,5,obj_player_two,true,true));
side_kick_landed=(image_xscale==1 && true && collision_circle(x+17,y+3,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-17,y+3,5,obj_player_two,true,true));


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
		if(not_block_bellow)
		{
			curr_stance_state=stance_state.jumping;
		
		if(keyboard_check(vk_left) && !flipped)
		{
			inairflip();
			flipped=true;
		}
		else if(keyboard_check(vk_right) && !flipped)
			{
				inairflip();
				flipped=true;
			}
		}
		else
		{
			curr_stance_state=stance_state.standing;
			flipped=false;
			hspeed=0;
			
		}
		
		break;
	} 
	case stance_state.kneeling:
	{
		if(!keyboard_check(vk_down))
		{
			curr_stance_state=stance_state.standing;
			sprite_index=spr_idle;
		}
	 break;	
	}
	
	
	
}

// contorller logic
 left_stick_up= gamepad_axis_value(0,gp_axislv)<=-1 && !keyboard_check(vk_up);
 left_stick_down=gamepad_axis_value(0,gp_axislv)>=1 && !keyboard_check(vk_down);
 left_stick_left=gamepad_axis_value(0,gp_axislh)<=-1 && !keyboard_check(vk_left);
 left_stick_right=gamepad_axis_value(0,gp_axislh)>=1 && !keyboard_check(vk_right);
 
 x_button=gamepad_button_check_pressed(0,gp_face3) && !keyboard_check(ord("J"));
 y_button=gamepad_button_check_pressed(0,gp_face4) && !keyboard_check(ord("K"));
 
 special_move_pressed=false;
 
 
 










