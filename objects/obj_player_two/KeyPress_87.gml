not_block_bellow = place_empty(x,y+1);
switch curr_stance_state
{
	case two_stance_state.standing:
	{
		if (!not_block_bellow && global.start_round && !instance_place(x,y+1,obj_player))
	{
		audio_play_sound(sound_jumping,2,false);
	vspeed = -15;
	curr_stance_state=two_stance_state.jumping;
	}
		break;
	}
	case two_stance_state.kneeling:
	{
	
		break;
	}
}