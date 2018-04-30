/// @description blocking
// You can write your code in this editor
switch curr_stance_state
{
	
case two_stance_state.standing:


{
	
	if(shield_hp>.30)
{
	curr_stance_state=two_stance_state.blocking;
	
	if(!instance_exists(obj_shield_two))instance_create_layer(x,y,"Instances",obj_shield_two)
	

	
	

}
	break;
}
	
}
