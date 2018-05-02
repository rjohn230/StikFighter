/// @description Player One press up
// You can write your code in this editor
/// @description Player One press up
// You can write your code in this editor
if(!player_one_ready)
{audio_play_sound(sound_transition,2,false);
switch player_one
{
	case choice_player.black_player:
	{
		player_one=choice_player.purple_player
	break;	
	}
	case choice_player.red_player:
	{
		player_one=choice_player.black_player
	break;	
	}
	case choice_player.purple_player:
	{
		player_one=choice_player.red_player
	break;	
	}
	
	
}
}
else if(player_two_ready)
{audio_play_sound(sound_transition,2,false);
	map_ready=false;
	map_down=false;
	switch map
{
	case map_select.fire:
	{
		map=map_select.warp
	break;	
	}

	
	case map_select.warp:
	{
		map=map_select.fire
	break;	
	}
	
	
}
}
