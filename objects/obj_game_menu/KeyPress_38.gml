/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sound_transition,3,false);
switch choice
{
	case game_menu_options.restart:
	{
		choice=charcater_select_two_room
		break;
	}
	
	case game_menu_options.main_menu:
	{
		choice=game_menu_options.restart
		break;
	}
	case charcater_select_two_room:
	{
		choice=game_menu_options.main_menu
	}
	
}