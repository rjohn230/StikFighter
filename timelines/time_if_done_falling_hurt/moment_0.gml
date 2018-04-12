hit_ground= hspeed==0 && vspeed==0;


if(sprite_index==spr_air_hurt && image_index>=3)
{
	image_index=3;
}


if(hit_ground && curr_stance_state==two_stance_state.hurting_fall)
{
	curr_stance_state=two_stance_state.standing
	sprite_index=spr_get_up;
	
	

}
else if(hit_ground && curr_stance_state==stance_state.hurting_fall)
{
	curr_stance_state=stance_state.standing
	sprite_index=spr_get_up;
	
	
}