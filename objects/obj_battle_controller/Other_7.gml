/// @description Insert description here
// You can write your code in this editor

// kil burning player

if(instance_exists(obj_stick_fire))
{
	if(instance_exists(obj_player))	player_two_hp-=.001
	else player_one_hp-=10;
}



//kill player



if(player_one_hp<=0) {
	instance_destroy(obj_player);
	instance_destroy(obj_stick_fire);

}
if(player_two_hp<=0)
{
	instance_destroy(obj_player_two);
	instance_destroy(obj_stick_fire);
	
}




someone_alive_or_DYING= instance_exists(obj_player) && instance_exists(obj_player_two) || instance_exists(obj_stick_fire)

switch(current_round)
{ 
	case round_number.round_one:
	{
		if(!someone_alive_or_DYING)
		{
			current_round=round_number.round_two
			
		if(instance_exists(obj_player)) player_one_round_win=player_one_round_win+1
		else player_two_round_win=player_two_round_win+1	
		
		count_down_round=3;
		global.start_round=false;
		
		
		if(instance_exists(obj_player))
		{
				instance_create_layer(player_two_startX,player_two_startY,"Instances",obj_player_two)
				player_one_hp=100;
				player_two_hp=100;
				
				
		}
		else
		{
			instance_create_layer(player_one_startX,player_one_startY,"Instances",obj_player)
				player_one_hp=100;
				player_two_hp=100;
			
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
			if(instance_exists(obj_player)) player_one_round_win=player_one_round_win+1
				else player_two_round_win=player_two_round_win+1
			
			match_over=player_one_round_win==2 || player_two_round_win=2
			
				
		
		if(match_over)
		{
			current_round=round_number.round_three
			
		}
			
		else
		{
			
		count_down_round=3;
		global.start_round=false;
		
		
		if(instance_exists(obj_player))
		{
				instance_create_layer(player_two_startX,player_two_startY,"Instances",obj_player_two)
				player_one_hp=100;
				player_two_hp=100;
			
		}
		else
		{
			instance_create_layer(player_one_startX,player_one_startY,"Instances",obj_player)
				player_one_hp=100;
				player_two_hp=100;
			
		}
		
		timeline_index=time_start_round
		timeline_loop=true
		timeline_running=true;	
		}
		
		}		
		
		
		break;	
	}
	
	
	case round_number.round_three:
	{
		if(!someone_alive_or_DYING)
		{
				// exit-game restart or character slect	
			//room_goto(menu_room)
		}
		break;	
	}
	
	
}