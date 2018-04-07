/// @description punch
// You can write your code in this editor
left_punch_landed=false;
right_punch_landed=false;
uppercut_landed=false;
jumping_punch_landed=false;

switch curr_stance_state

{
	case stance_state.standing:
	{
		if(strike_ready)
{
	
 if(combo[0]==1)
{
	sprite_index=spr_punch_right;
	combo[0]=combo[0]+1;
	strike_ready=false;
	
	alarm[0]=30*.25 //time it stay in this sprite
	alarm[1]=30*.75; //time reset combo wait too long
}
else
{
sprite_index=spr_punch;
combo[0]=combo[0]+1;
strike_ready=false;
if(collision_circle(x,y,16,obj_player_two,false,true))
{
	with(obj_player_two)
	{
		sprite_index=spr_hurt_high;
		alarm[5]=30*.5
	}
}
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
		sprite_index=spr_uppercut;
		strike_ready=false;
		alarm[0]=30*1 // time to chain
		}
	 break;	
	}
	
	
	
}





