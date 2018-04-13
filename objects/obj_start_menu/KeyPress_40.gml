/// @description Press Down
// You can write your code in this editor
audio_play_sound(sound_transition,3,false);
switch choice
{
	case options.two_player:
	{
		choice=options.single_player
		break;
	}
	case options.single_player:
	{
		choice=options.training
		break;
	}
	case options.training:
	{
		choice=options.exit_game
		break;
	}
	case options.exit_game:
	{
		choice=options.two_player
		break;
	}
	
}