/// @description Insert description here
// You can write your code in this editor
/// @description Press Up
// You can write your code in this editor
audio_stop_sound(sound_menu);
audio_play_sound(sound_select,2,false);
switch choice
{
	case options.two_player:
	{
		
		room_goto(charcater_select_two_room)
		break;
	}
	
	case options.training:
	{
		room_goto(tutorial_room);
		break;
	}
	case options.exit_game:
	{
		game_end()
		break;
	}
	
}