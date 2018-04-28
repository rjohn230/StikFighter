hit_ground= collision_rectangle(x-28,y+28,x+28,y+33,obj_ground,false,true);


if(sprite_index==air_hurt && image_index>=4)
{
	sprite_set_speed(air_hurt,0,spritespeed_framespersecond)
}


if(hit_ground && curr_stance_state==two_stance_state.hurting_fall)
{
	curr_stance_state=two_stance_state.standing
	sprite_index=get_up;
	sprite_set_speed(air_hurt,6,spritespeed_framespersecond)
	
	

}
else if(hit_ground && curr_stance_state==stance_state.hurting_fall)
{
	curr_stance_state=stance_state.standing
	sprite_index=get_up;
	sprite_set_speed(air_hurt,6,spritespeed_framespersecond)
	
	
}
