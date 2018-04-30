/// @description Insert description here
// You can write your code in this editor
number=4

enum choice_player
{
	black_player,
	red_player,
	purple_player
}

player_one=choice_player.black_player
player_two=choice_player.purple_player

player_one_ready=false;
player_two_ready=false;

count_down=false

free=true;

global.player_one_choice= choice_player.black_player;
global.player_two_choice= choice_player.purple_player;
if(!variable_global_exists("player_one_wins"))
{
global.player_one_wins=0;
global.player_two_wins=0;	
	
}