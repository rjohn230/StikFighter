/// @description Insert description here
// You can write your code in this editor
global.start_round=false;
count_down_round=4;

timeline_index=time_start_round
timeline_loop=true
timeline_running=true;

enum round_number
{
	round_one,
	round_two,
	round_three	
}
current_round=round_number.round_one

round_time=90

player_one_hp=100;
player_one_special_meter=0;

player_two_hp=100;
player_two_special_meter=0;