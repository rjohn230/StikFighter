special_ready=global.start_round && strike_ready && obj_battle_controller.player_one_energy>=100;
if(special_ready)
{
	
	
	if(image_xscale==1) 
	{
		projected= 30;
		laser_mv=15;
	}
	else 
	{
		laser_mv=-15;
		projected= -(64+16);
		
	}
	
	
	
	if(image_index>=2.8 && sprite_index==special_move)
	{
	instance_create_layer(x+projected,y,"Instances",obj_laser);
	
	with(obj_laser)
	{
			hspeed=obj_player.laser_mv;
			sprite_index=obj_player.laser;
	}
	
	obj_battle_controller.player_one_energy=0;
	sprite_index=idle;
	
	timeline_running=false;
	}
	
	
	
}
else timeline_running=false;
