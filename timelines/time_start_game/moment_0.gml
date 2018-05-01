// draw number
if(number>0)
{
number= number-1;
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
	break;	
	}
	case map_select.spike:
	{
		room_goto(spike_room)
	break;	
	}
	case map_select.warp:
	{
		room_goto(warp_room)
	break;	
	}
	
	
}
}
