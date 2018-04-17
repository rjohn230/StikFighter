
can_move=place_empty(x-mv,y)||  (instance_place(x-mv,y,obj_player) && image_xscale==1);
if(can_move)
{
x=x-mv;	
}