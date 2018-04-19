/// @description kick
// You can write your code in this editor
if(global.start_round)
{
	
	
front_kick_landed=(image_xscale==1 && true && collision_circle(x+22,y-11,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-22,y-11,5,obj_player_two,true,true));
leg_sweep_landed=(image_xscale==1 && true && collision_circle(x+16,y-26,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-16,y-26,5,obj_player_two,true,true));
head_kick_landed=(image_xscale==1 && true && collision_circle(x+21,y-7,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-21,y-7,5,obj_player_two,true,true));
side_kick_landed=(image_xscale==1 && true && collision_circle(x+17,y+3,5,obj_player_two,false,true)) || (image_xscale==-1 && true && collision_circle(x-17,y+3,5,obj_player_two,true,true));
air_kick_landed=false;

switch curr_stance_state

{
	case two_stance_state.standing:
	{
		if(combo[0]==2)
{
	sprite_index=spr_combo_kick;
	combo[0]=combo[0]+1;
	strike_ready=false;
	
	if(head_kick_landed)
	{
		with(obj_player)
	{
		hit_landed(obj_battle_controller.combo,obj_battle_controller.combo_boost);
		curr_stance_state=stance_state.hurting_fall
		vspeed = -10;
		hspeed= image_xscale*-5;
		sprite_index=spr_air_hurt;
		timeline_index=time_if_done_falling_hurt
		timeline_loop=true;
		timeline_running=true;
	}	
	}
	
	alarm[0]=30*.75 // time to chain
	alarm[1]=30*.05; //time resets combos
}
	else if(combo[1]==1)
	{
		
		sprite_index=spr_kick_side;
		combo[1]=combo[1]+1;
		strike_ready=false;
		
		if(side_kick_landed)//
	{
		with(obj_player)
	{
		hit_landed(obj_battle_controller.combo,obj_battle_controller.combo_boost);
		curr_stance_state=stance_state.hurting_fall
		vspeed = -5;
		hspeed= image_xscale*-7;
		sprite_index=spr_air_hurt;
		timeline_index=time_if_done_falling_hurt
		timeline_position=0;
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
		with(obj_player)
	{
		hit_landed(obj_battle_controller.reg_attack,obj_battle_controller.reg_boost);
		curr_stance_state=stance_state.hurting_high
		sprite_index=spr_standing_hurt
		alarm[5]=30*.75;
	}	
	
	}
		
		
		
		alarm[0]=30*.5 // time to chain
		alarm[1]=30*.75; //time resets combos
	}
		
		break;
	}
	
	case two_stance_state.jumping:
	{
		
		sprite_index=spr_air_kick;
		strike_ready=false;
		alarm[0]=30*1 // time to chain
		
		break;
	} 
	case two_stance_state.kneeling:
	{
		
		sprite_index=spr_leg_sweep;
		strike_ready=false;
		
		
		if(leg_sweep_landed)
	{
		with(obj_player)
	{
		hit_landed(obj_battle_controller.reg_attack,obj_battle_controller.reg_boost);
		curr_stance_state=stance_state.hurting_fall
		vspeed= -5
		hspeed= image_xscale*-2;
		sprite_index=spr_air_hurt;
		timeline_index=time_if_done_falling_hurt
		timeline_position=0;
		timeline_loop=true;
		timeline_running=true;
	}	
	}
		
		
		alarm[0]=30*1 // time to chain
		
	 break;	
	}
	
	
	
}

}



