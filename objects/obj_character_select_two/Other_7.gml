/// @description Insert description here
// You can write your code in this editor

if(player_one_ready&& player_two_ready&&!count_down)
{
	count_down=true;
	 timeline_index=time_start_game;
	 timeline_loop=true;
	 timeline_running=true;
	 timeline_position=0;
}
else if(!player_one_ready|| !player_two_ready && count_down)
{
	count_down=false;
	timeline_running=false;
	number=10;
}