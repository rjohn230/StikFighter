if(count_down_round>0)
{
	
	count_down_round=count_down_round-1;
}
else 
{
	global.start_round=true
	instance_create_layer(room_width/2,room_height/2,"Instances",obj_fight_title)
	timeline_running=false;
}