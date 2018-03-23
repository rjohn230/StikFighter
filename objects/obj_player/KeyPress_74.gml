/// @description punch
// You can write your code in this editor
if(strike_ready)
{
	
 if(combo[0]==1)
{
	sprite_index=spr_base_right_punch;
	combo[0]=combo[0]+1;
	strike_ready=false;
	alarm[0]=30*.25 //time it stay in this sprite
	alarm[1]=30*.75; //time reset combo wait too long
}
else
{
sprite_index=spr_base_left_punch;
combo[0]=combo[0]+1;
strike_ready=false;
alarm[0]=30*.10; // time it stay in this sprite
alarm[1]=30*.5; //time resets combos
}

}





