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
	room_goto(fire_room);
}
