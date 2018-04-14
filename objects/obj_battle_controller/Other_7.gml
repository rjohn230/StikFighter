/// @description Insert description here
// You can write your code in this editor
someone_alive_or_DYING= instance_exists(obj_player) && instance_exists(obj_player_two) || instance_exists(obj_stick_fire)

switch(current_round)
{ 
	case round_number.round_one:
	{
		if(!someone_alive_or_DYING)
		{
		count_down_round=3;
		global.start_round=false;
		current_round=round_number.round_two
		
		if(instance_exists(obj_player))
		{
				instance_create_layer(player_two_startX,player_two_startY,"Instances",obj_player_two)	
		}
		else
		{
			instance_create_layer(player_one_startX,player_one_startY,"Instances",obj_player)
		}
		
		timeline_index=time_start_round
		timeline_loop=true
		timeline_running=true;			
		}
		
		break;	
	}
	
	case round_number.round_two:
	{
		if(!someone_alive_or_DYING)
		{
		count_down_round=3;
		global.start_round=false;
		current_round=round_number.round_three
		
		if(instance_exists(obj_player))
		{
				instance_create_layer(player_two_startX,player_two_startY,"Instances",obj_player_two)	
		}
		else
		{
			instance_create_layer(player_one_startX,player_one_startY,"Instances",obj_player)
		}
		
		timeline_index=time_start_round
		timeline_loop=true
		timeline_running=true;			
		}		
		
		
		break;	
	}
	
	
	case round_number.round_three:
	{
				if(!someone_alive_or_DYING || true) //to do add scoring system
		{
		room_goto(menu_room)		
		}
		break;	
	}
	
	
}