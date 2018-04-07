/// @description gravity
// You can write your code in this editor

//gravity code
not_block_bellow = place_empty(x,y+1);


if(!not_block_bellow)
{
	
	gravity=0;
}
else
{

gravity=1;
}

if(vspeed>12) vspeed=12;

//where the player faces
if(instance_exists(obj_player_two)){
	if(obj_player_two.x >= x && !not_block_bellow){
		image_xscale = 1;
	}else if(obj_player_two.x < x && !not_block_bellow){
		image_xscale = -1;
	}
}

switch curr_stance_state

{
	case stance_state.standing:
	{
		
		break;
	}
	
	case stance_state.jumping:
	{
		if(not_block_bellow)
		{
			curr_stance_state=stance_state.jumping;
		
		if(keyboard_check(vk_left) && !flipped)
		{
			inairflip();
			flipped=true;
		}
		else if(keyboard_check(vk_right) && !flipped)
			{
				inairflip();
				flipped=true;
			}
		}
		else
		{
			curr_stance_state=stance_state.standing;
			flipped=false;
			hspeed=0;
			
		}
		
		break;
	} 
	case stance_state.kneeling:
	{
		if(!keyboard_check(vk_down))
		{
			curr_stance_state=stance_state.standing;
			sprite_index=spr_idle;
		}
	 break;	
	}
	
	
	
}



