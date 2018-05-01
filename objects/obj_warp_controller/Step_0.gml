/// @description Insert description here
// You can write your code in this editor
bottom_p1= obj_player.y>room_height
bottom_p2= obj_player_two.y>room_height

if(bottom_p1)
{
	obj_player.y=obj_top.y;
	obj_player.x=obj_top.x;	
}

if(bottom_p2)
{
	obj_player_two.y=obj_top.y;
	obj_player_two.x=obj_top.x;	
}