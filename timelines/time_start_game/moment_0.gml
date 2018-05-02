// draw number
if(number>0)
{
number= number-1;
audio_play_sound(sound_countdown,2,false);
}
else 
{
	global.player_one_choice= player_one;
	global.player_two_choice = player_two;
	
	timeline_loop=false;
		switch map
{
	case map_select.fire:
	{
		room_goto(fire_room)
		audio_play_sound(sound_select,2,false);
	break;	
	}

	case map_select.warp:
	{
		room_goto(warp_room)
		audio_play_sound(sound_select,2,false);
	break;	
	}
	
	
}
}
