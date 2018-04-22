done_with_flip=false
if(  left_flip || keyboard_check(ord("A")))
{
		if(image_xscale=1) sprite_index=back_flip;
		else sprite_index=front_flip;
		hspeed=-mv;	
}
else
{
	if(image_xscale=1) sprite_index=front_flip;
	else sprite_index=back_flip;
	hspeed=mv;
}

timeline_index=time_done_with_flip;
timeline_loop=true;
timeline_running=true;
