/// @description Insert description here
// You can write your code in this editor
switch choice
{
	case game_menu_options.restart:
	{
		audio_pause_sound(room_fight)
		room_restart()
		break;
	}
	
	case game_menu_options.main_menu:
	{
		audio_pause_sound(room_fight)
		room_goto(menu_room);
		break;
	}
	case game_menu_options.character_select:
	{
		audio_pause_sound(room_fight)
		room_goto(charcater_select_two_room)
		break;
	}
	
}