/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red)




switch(current_round)
{ 
	case round_number.round_one:
	{
		draw_text(x,y,"ROUND ONE");
		break;	
	}
	
	case round_number.round_two:
	{
		draw_text(x,y,"ROUND TWO");
		break;	
	}
	
	case round_number.round_three:
	{
		draw_text(x,y,"ROUND THREE");
		break;	
	}
	
	
}
if(count_down_round>0) draw_text(room_width/2,room_height/2,string(count_down_round))