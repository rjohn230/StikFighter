/// @description Player two press down
// You can write your code in this editor
if(!player_two_ready)
{
switch player_two
{
	case choice_player.red_player:
	{
		player_two=choice_player.blue_player
	break;	
	}
	case choice_player.blue_player:
	{
		player_two=choice_player.green_player
	break;	
	}
	case choice_player.green_player:
	{
		player_two=choice_player.yellow_player
	break;	
	}
	case choice_player.yellow_player:
	{
		player_two=choice_player.red_player
	break;	
	}
	
}
}