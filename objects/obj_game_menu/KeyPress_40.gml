/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sound_transition,6,false);
switch choice
{
	case game_menu_options.restart:
	{
		choice=game_menu_options.main_menu
		break;
	}
	case game_menu_options.main_menu:
	{
		choice=game_menu_options.character_select
		break;
	}
	case game_menu_options.character_select:
	{
		choice=game_menu_options.restart
		break;
	}
	
}