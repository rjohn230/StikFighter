/// @description Insert description here
// You can write your code in this editor
player_one_exist=instance_exists(obj_player);
player_two_exist=instance_exists(obj_player_two);

if(player_one_exist && player_two_exist)
{
	
p1=obj_player;
p2=obj_player_two;
bon=10;
hit=5;

bl=obj_bottom_left;
br=obj_bottom_right;

tl=obj_top_left;
to=obj_top;
tr=obj_top_right;




bottom_p1= p1.y>room_height && player_one_exist
bottom_p2= p2.y>room_height && player_two_exist

if(bottom_p1)
{
	p1.y=to.y;
	p1.x=to.x;	
	with(obj_player)
	{
		hit_landed(obj_warp_controller.hit,obj_warp_controller.bon)
	}
}

if(bottom_p2)
{
	p2.y=to.y;
	p2.x=to.x;	
		with(obj_player_two)
	{
		hit_landed(obj_warp_controller.hit,obj_warp_controller.bon)
	}
}

bottom_left_p1=p1.x<0 && point_distance(p1.x,p1.y,bl.x,bl.y)<=200 
bottom_left_p2=p2.x<0 && point_distance(p2.x,p2.y,bl.x,bl.y)<=200 

if(bottom_left_p1)
{
	p1.y=tr.y;
	p1.x=tr.x;
		with(obj_player)
	{
		hit_landed(obj_warp_controller.hit,obj_warp_controller.bon)
	}
}
if(bottom_left_p2)
{
	p2.y=tr.y;
	p2.x=tr.x;
			with(obj_player_two)
	{
		hit_landed(obj_warp_controller.hit,obj_warp_controller.bon)
	}
}

bottom_right_p1=p1.x>room_width && point_distance(p1.x,p1.y,br.x,br.y)<=200 
bottom_right_p2=p2.x>room_width && point_distance(p2.x,p2.y,br.x,br.y)<=200 

if(bottom_right_p1)
{
	p1.y=tl.y;
	p1.x=tl.x;
		with(obj_player)
	{
		hit_landed(obj_warp_controller.hit,obj_warp_controller.bon)
	}
}
if(bottom_right_p2)
{
	p2.y=tl.y;
	p2.x=tl.x;	
			with(obj_player_two)
	{
		hit_landed(obj_warp_controller.hit,obj_warp_controller.bon)
	}
}


}
