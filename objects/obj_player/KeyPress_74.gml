/// @description punch
// You can write your code in this editor
switch curr_stance_state

{
	case stance_state.standing:
	{
		if(strike_ready)
{
	
 if(combo[0]==1)
{
	sprite_index=spr_base_right_punch;
	combo[0]=combo[0]+1;
	strike_ready=false;
	alarm[0]=30*.25 //time it stay in this sprite
	alarm[1]=30*.75; //time reset combo wait too long
}
else
{
sprite_index=spr_base_left_punch;
combo[0]=combo[0]+1;
strike_ready=false;
alarm[0]=30*.10; // time it stay in this sprite
alarm[1]=30*.5; //time resets combos
}

}
		break;
	}
	
	case stance_state.jumping:
	{
		if(strike_ready)
		{
		sprite_index=spr_jumping_punch;
		strike_ready=false;
		alarm[0]=30*.75// time to chain
		}
		break;
		
	} 
	case stance_state.kneeling:
	{
		if(strike_ready)
		{
		sprite_index=spr_kneeling_uppercut;
		strike_ready=false;
		alarm[0]=30*1 // time to chain
		}
	 break;	
	}
	
	
	
}





