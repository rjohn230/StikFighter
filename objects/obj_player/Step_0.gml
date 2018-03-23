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



