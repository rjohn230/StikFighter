/// @description Insert description here
// You can write your code in this editor
global.start_round=false;
global.player_one_wins=0;
global.player_two_wins=0;
// attacks

reg_attack=5;
finisher=reg_attack*5;
combo=reg_attack*1.5;

//energy boost
reg_boost=5;
combo_boost=reg_boost*1.7;


player_one_startX=obj_player.x;
player_one_startY=obj_player.y;

player_two_startX=obj_player_two.x;
player_two_startY=obj_player_two.y;

count_down_round=1;
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
player_one_energy=100;

player_two_hp=100;
player_two_energy=100;


player_one_round_win=0;
player_two_round_win=0;

match_over=false;
