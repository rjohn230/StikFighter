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
	alarm[0]=30*.5 // time to chain
	alarm[1]=30*.05; //time resets combos
}
	else if(combo[1]==1)
	{
		sprite_index=spr_side_kick;
		combo[1]=combo[1]+1;
		strike_ready=false;
		alarm[0]=30*.5 // time to chain
		alarm[1]=30*.05; //time resets combos
	}
	else if (combo[1]==0)
	{
		sprite_index=spr_font_kick;
		combo[1]=combo[1]+1;
		strike_ready=false;
		alarm[0]=30*.10 // time to chain
		alarm[1]=30*.5; //time resets combos
	}
		
		break;
	}
	
	case stance_state.jumping:
	{
		if(strike_ready)
		{
		sprite_index=spr_jumping_side_kick;
		strike_ready=false;
		alarm[0]=30*1 // time to chain
		}
		break;
	} 
	case stance_state.kneeling:
	{
		if(strike_ready)
		{
		sprite_index=spr_kneeling_leg_sweep;
		strike_ready=false;
		alarm[0]=30*1 // time to chain
		}
	 break;	
	}
	
	
	
}





