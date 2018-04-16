/// @description Insert description here
// You can write your code in this editor
vspeed=0
hspeed=0;

if(collision_circle(x,y,70,obj_spike,false,true))
{
  obj_spike.vspeed = 8; 
	
}
else if(collision_circle(x,y,70,obj_spike2,false,true))
{
  obj_spike2.vspeed = 8; 
	
}