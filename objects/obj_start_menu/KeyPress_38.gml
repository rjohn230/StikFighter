/// @description Press Up
// You can write your code in this editor
audio_play_sound(sound_transition,3,false);
switch choice
{
	case options.two_player:
	{
		choice=options.exit_game
		break;
	}
	
	case options.training:
	{
		choice=options.two_player
		break;
	}
	case options.exit_game:
	{
		choice=options.training
		break;
	}
	
}