/// @description punch
// You can write your code in this editor
if(strike_ready)
		{

switch curr_stance_state

{
	case stance_state.standing:
	{

	
 if(combo[0]==1)
{
	sprite_index=spr_punch_right;
	combo[0]=combo[0]+1;
	strike_ready=false;
	audio_play_sound(sound_punch,2,false);
	
	
	if(right_punch_landed)
{
	with(obj_player_two)
	{
		curr_stance_state=two_stance_state.hurting_high
		sprite_index=spr_standing_hurt;
		alarm[5]=30*.5
	}
}
	
	alarm[0]=30*.25 //time it stay in this sprite
	alarm[1]=30*.75; //time reset combo wait too long
}
else
{
sprite_index=spr_punch;
combo[0]=combo[0]+1;
strike_ready=false;
audio_play_sound(sound_punch,2,false);

		if(left_punch_landed)
 {
 	with(obj_player_two)
 	{
		curr_stance_state=two_stance_state.hurting_high		
 		sprite_index=spr_standing_hurt;
 		alarm[5]=30*.5
 	}
 }

alarm[0]=30*.10; // time it stay in this sprite
alarm[1]=30*.5; //time resets combos
}


		break;
	}
	
	case stance_state.jumping:
	{
		
		sprite_index=spr_air_punch;
		strike_ready=false;
		alarm[0]=30*.75// time to chain
		audio_play_sound(sound_punch,2,false);
		
	if(jumping_punch_landed)
{
	with(obj_player_two)
	{
		curr_stance_state=two_stance_state.hurting_fall
		vspeed = -10;
		hspeed= image_xscale*-5;
		sprite_index=spr_air_hurt;
		timeline_index=time_if_done_falling_hurt
		timeline_position=0;
		timeline_loop=true;
		timeline_running=true;
	}
}
		
		break;
		
	} 
	
	case stance_state.kneeling:
	{
		
		sprite_index=spr_uppercut;
		strike_ready=false;
		alarm[0]=30*1 // time to chain
		audio_play_sound(sound_punch,2,false);
		
		if(uppercut_landed)
{
	with(obj_player_two)
	{
		curr_stance_state=two_stance_state.hurting_fall
		vspeed = -10;
		hspeed= image_xscale*-5;
		sprite_index=spr_air_hurt;
		timeline_index=time_if_done_falling_hurt
		timeline_loop=true;
		timeline_running=true;
	}
}
		
		
	 break;	
	}
	
	
	
}

}





