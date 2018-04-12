done_with_flip=false
if(keyboard_check(vk_left))
{
		if(image_xscale=1) sprite_index=spr_back_flip;
		else sprite_index=spr_forward_flip;
		hspeed=-5;	
}
else
{
	if(image_xscale=1) sprite_index=spr_forward_flip;
	else sprite_index=spr_back_flip;
	hspeed=5;
}

timeline_index=time_done_with_flip;
timeline_loop=true;
timeline_running=true;