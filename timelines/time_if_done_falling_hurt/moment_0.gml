hit_ground= hspeed==0 && vspeed==0;

if(hit_ground && curr_stance_state==two_stance_state.hurting_fall)
{
	curr_stance_state=two_stance_state.standing
	sprite_index=spr_idle;
	
	timeline_running=false;

}
else if(hit_ground && curr_stance_state==stance_state.hurting_fall)
{
	curr_stance_state=stance_state.standing
	sprite_index=spr_idle;
	
	timeline_running=false;
}