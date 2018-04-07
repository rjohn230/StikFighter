/// @description gravity
// You can write your code in this editor

//gravity code
not_block_bellow = place_empty(x,y+1);

hurting_rebound_time=0;

if(!not_block_bellow)
{
	
	gravity=0;
}
else
{

gravity=1;
}

if(vspeed>12) vspeed=12;

if(instance_exists(obj_player)){
	if(obj_player.x >= x && !not_block_bellow){
		image_xscale = 1;
	}else if(obj_player.x < x && !not_block_bellow){
		image_xscale = -1;
	}
}



//hurting code

switch(curr_stance_state)
{
	case two_stance_state.hurting_high:
	{
		
	}
}


