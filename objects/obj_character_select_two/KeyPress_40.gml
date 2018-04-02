/// @description PLayer One Presses Down
// You can write your code in this editor
if(!player_one_ready)
{
switch player_one
{
	case choice_player.red_player:
	{
		player_one=choice_player.blue_player
	break;	
	}
	case choice_player.blue_player:
	{
		player_one=choice_player.green_player
	break;	
	}
	case choice_player.green_player:
	{
		player_one=choice_player.yellow_player
	break;	
	}
	case choice_player.yellow_player:
	{
		player_one=choice_player.red_player
	break;	
	}
	
}
}