/// @description Insert description here
// You can write your code in this editor
with(obj_battle_controller)
{
	player_two_hp-=obj_laser.damage;
}

	with(obj_player_two)
	{
		
		curr_stance_state=two_stance_state.hurting_fall
		vspeed = -10;
		hspeed= image_xscale*-7;
		sprite_index=air_hurt;
		timeline_index=time_if_done_falling_hurt
		timeline_loop=true;
		timeline_running=true;
	}
