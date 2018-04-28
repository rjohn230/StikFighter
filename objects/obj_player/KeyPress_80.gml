/// @description Special Move
// You can write your code in this editor
special_ready=global.start_round && strike_ready && obj_battle_controller.player_one_energy>=100;
if(special_ready)
{
sprite_index=special_move;

timeline_index=time_done_special;
timeline_loop=true;
timeline_running=true;

}

