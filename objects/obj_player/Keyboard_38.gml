
switch curr_stance_state
{
	case stance_state.standing:
	{
		if (!not_block_bellow && global.start_round && !instance_place(x,y+1,obj_player_two))
	{
	vspeed = -15;
	curr_stance_state=stance_state.jumping;
	}
		break;
	}
	case stance_state.kneeling:
	{
	
		break;
	}
}