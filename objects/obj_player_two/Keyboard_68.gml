/// @description walk right
// You can write your code in this editor
if (global.start_round)
{
	
	not_block_bellow_you = place_empty(x,y+1);
switch curr_stance_state
{
	case two_stance_state.standing:
	{
		if(!not_block_bellow_you)moveright_two();
		break;
	}
	case two_stance_state.kneeling:
	{
		break;
	}
}

}