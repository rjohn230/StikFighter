
if(!droped)
{
	chance= irandom_range(1,3);
	
	if(chance==1 && path_position>=0.05 && path_position<=.06) 
	{
		instance_create_layer(x,y,"Instances",obj_loot);
		droped=true;
	}
}

if(!droped)
{
	chance= irandom_range(1,3);
	
	if(chance==1 && path_position>=0.49 && path_position<=.5) 
	{
		instance_create_layer(x,y,"Instances",obj_loot);
		droped=true;
	}
}

if(!droped)
{
	
	
	if(path_position>=.80) 
	{
		instance_create_layer(x,y,"Instances",obj_loot);
		droped=true;
	}
}