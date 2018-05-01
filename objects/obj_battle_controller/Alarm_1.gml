/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_plane)&&!instance_exists(obj_loot))
{
	
	instance_create_layer(obj_dock.x,obj_dock.y,"Instances",obj_plane)
}
alarm[1]=30*15