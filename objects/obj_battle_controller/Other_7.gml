/// @description Insert description here
// You can write your code in this editor

// kil burning player



//kill player


if(player_one_hp<=0) {
	instance_destroy(obj_player);
	instance_destroy(obj_shield);
	instance_destroy(obj_laser);
    audio_pause_sound(room_fight);
}
if(player_two_hp<=0)
{
	instance_destroy(obj_player_two);
	instance_destroy(obj_shield_two);
	instance_destroy(obj_laser);
	audio_pause_sound(room_fight);
	
}
if(variable_global_exists("player_one_wins"))
{
	if(!added_winner&& player_one_round_win>=2) 
	{
	global.player_one_wins+=1;
	added_winner=true;
	}

	if(!added_winner&& player_two_round_win>=2) 
	{
	global.player_two_wins+=1;
	added_winner=true;
	}
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
		
		if(instance_exists(obj_player)) instance_destroy(obj_player);
		else instance_destroy(obj_player_two)
		
				instance_create_layer(player_two_startX,player_two_startY,"Instances",obj_player_two)
				player_one_hp=100;
				player_two_hp=100;
				
				
		
			instance_create_layer(player_one_startX,player_one_startY,"Instances",obj_player)
				player_one_hp=100;
				player_two_hp=100;
			
		
		
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
			current_round=round_number.round_three
			if(instance_exists(obj_player)) player_one_round_win=player_one_round_win+1
				else player_two_round_win=player_two_round_win+1
			
			match_over=player_one_round_win==2 || player_two_round_win=2
			
				
		
		if(match_over)
		{
			break;
			
		}
			
		else
		{
		
		count_down_round=3;
		global.start_round=false;
		
				if(instance_exists(obj_player)) instance_destroy(obj_player);
		else instance_destroy(obj_player_two)
		
				instance_create_layer(player_two_startX,player_two_startY,"Instances",obj_player_two)
				player_one_hp=100;
				player_two_hp=100;
				
				
		
			instance_create_layer(player_one_startX,player_one_startY,"Instances",obj_player)
				player_one_hp=100;
				player_two_hp=100;
			
		
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
			instance_create_layer(x,y,"Instances",obj_game_menu)
		}
		break;	
	}
	
	
}

