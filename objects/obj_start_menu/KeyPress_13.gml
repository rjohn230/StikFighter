/// @description Insert description here
// You can write your code in this editor
/// @description Press Up
// You can write your code in this editor
switch choice
{
	case options.two_player:
	{
		room_goto(charcater_select_two_room)
		break;
	}
	case options.single_player:
	{
		//goto to single player room
		break;
	}
	case options.training:
	{
		room_goto(1);
		break;
	}
	case options.exit_game:
	{
		game_end()
		break;
	}
	
}