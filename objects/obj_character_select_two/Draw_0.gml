/// @description Menu
// You can write your code in this editor
draw_set_font(font_character_select)
draw_set_color(c_white)
//line divide
lineX=room_width/2
lineY= room_height

// player divider
draw_rectangle(lineX,0,lineX+10,lineY/1.5,false);

// the image box for eachplayer
c1x=lineX/2;
c1y=lineY/6;

c2x=room_width*.75;
c2y=lineY/6;

draw_circle(c1x,c1y,100,true)
draw_circle(c2x,c2y,100,true)


switch player_one
{
	case choice_player.black_player:
	{
		draw_circle_color(lineX/2,lineY/6,50,c_black,c_black,false);
	break;	
	}
	case choice_player.red_player:
	{
		draw_circle_color(lineX/2,lineY/6,50,c_red,c_red,false);
	break;	
	}
	case choice_player.purple_player:
	{
		draw_circle_color(lineX/2,lineY/6,50,c_purple,c_purple,false);
	break;	
	}

	
}

switch player_two
{
	case choice_player.black_player:
	{
		draw_circle_color(c2x,c2y,50,c_black,c_black,false);
	break;	
	}
	case choice_player.red_player:
	{
		draw_circle_color(c2x,c2y,50,c_red,c_red,false);
	break;	
	}
	case choice_player.purple_player:
	{
		draw_circle_color(c2x,c2y,50,c_purple,c_purple,false);
	break;	
	}

	
}



// TEXT FOR PLAYERS
draw_text_color(lineX/3.5,lineY/3,"PLAYER ONE",c_white,c_white,c_white,c_white,1)
if(player_one_ready)draw_text_color(lineX/3.5,lineY/2,"READY",c_white,c_white,c_white,c_white,1)

draw_text_color(room_width*.65,lineY/3,"PLAYER TWO",c_white,c_white,c_white,c_white,1)
if(player_two_ready)draw_text_color(room_width*.65,lineY/2,"READY",c_white,c_white,c_white,c_white,1)


//draw count down
if(count_down)draw_text(room_width/2,lineY/1.4,string(number))

