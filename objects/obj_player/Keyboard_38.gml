



//gravity code
not_block_bellow_you = place_empty(x,y+1);

switch curr_stance_state
{
		case stance_state.standing:
		{
			
			if (!not_block_bellow_you && global.start_round )
					{
						vspeed = -15;
						curr_stance_state=stance_state.jumping;
					}	
			
			break;
		}
}


