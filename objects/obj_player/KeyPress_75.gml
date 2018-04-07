/// @description kick
// You can write your code in this editor


switch curr_stance_state

{
	case stance_state.standing:
	{
		if(combo[0]==2)
{
	sprite_index=spr_base_sliding_head_kick;
	combo[0]=combo[0]+1;
	strike_ready=false;
	
	if(false)
	{
		with(obj_player_two)
	{
		curr_stance_state=two_stance_state.hurting_fall
		vspeed = -10;
		hspeed= image_xscale*-3;
		sprite_index=spr_hurt_air_fall;
		timeline_index=time_if_done_falling_hurt
		timeline_loop=true;
		timeline_running=true;
	}	
	}
	
	alarm[0]=30*.5 // time to chain
	alarm[1]=30*.05; //time resets combos
}
	else if(combo[1]==1)
	{
		sprite_index=spr_combo_kick;
		combo[1]=combo[1]+1;
		strike_ready=false;
		
		if(side_kick_landed)//
	{
		with(obj_player_two)
	{
		curr_stance_state=two_stance_state.hurting_fall
		vspeed = -2;
		hspeed= image_xscale*-3;
		sprite_index=spr_hurt_air_fall;
		timeline_index=time_if_done_falling_hurt
		timeline_loop=true;
		timeline_running=true;
	}	
	}
	
		alarm[0]=30*.5 // time to chain
		alarm[1]=30*.05; //time resets combos
	}
	else if (combo[1]==0)
	{
		sprite_index=spr_kick;
		combo[1]=combo[1]+1;
		strike_ready=false;
		
		
		
		if(front_kick_landed)
	{
		with(obj_player_two)
	{
		curr_stance_state=two_stance_state.hurting_fall
		sprite_index=spr_hurt_mid
		alarm[5]=30*.10;
	}	
	
	}
		
		
		
		alarm[0]=30*.5 // time to chain
		alarm[1]=30*.75; //time resets combos
	}
		
		break;
	}
	
	case stance_state.jumping:
	{
		
		sprite_index=spr_air_kick;
		strike_ready=false;
		alarm[0]=30*1 // time to chain
		
		break;
	} 
	case stance_state.kneeling:
	{
		
		sprite_index=spr_leg_sweep;
		strike_ready=false;
		
		
		if(side_kick_landed)
	{
		with(obj_player_two)
	{
		curr_stance_state=two_stance_state.hurting_fall
		vspeed = -1;
		hspeed= image_xscale*-1;
		sprite_index=spr_hurt_air_fall;
		timeline_index=time_if_done_falling_hurt
		timeline_loop=true;
		timeline_running=true;
	}	
	}
		
		
		alarm[0]=30*1 // time to chain
		
	 break;	
	}
	
	
	
}





