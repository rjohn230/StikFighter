if(sprite_index==back_flip && image_index>=6)
{
	done_with_flip=true
	
}
else if(sprite_index==front_flip && image_index>=5)
{
	done_with_flip=true
}

if(done_with_flip)
{
	if(image_index>=1)
	{
		sprite_index=idle;
		timeline_running=false;
	}
}
