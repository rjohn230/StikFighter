/// @description Insert description here
// You can write your code in this editor
special_ready=global.start_round && strike_ready && obj_battle_controller.player_two_energy>=100;
if(special_ready)
{
sprite_index=special_move;

timeline_index=time_done_special_two;
timeline_loop=true;
timeline_running=true;

}