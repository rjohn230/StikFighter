/// @description Drawing menu options
// You can write your code in this editor
draw_set_font(font_start_menu)
xx=room_width/3;
yy=room_height/6;

yy1=yy+64
yy2=yy+128
yy3=yy+192





switch choice
{
	case options.two_player:
	{
		draw_text_color(xx,yy,"TWO PLAYER",c_blue,c_ltgray,c_red,c_ltgray,1);
		draw_text(xx,yy1,"SINGLE PLAYER")
		draw_text(xx,yy2,"TUTORIAL")
		draw_text(xx,yy3,"EXIT")
		break;	
	}
	case options.single_player:
	{
		draw_text(xx,yy,"TWO PLAYER")
		draw_text_color(xx,yy1,"SINGLE PLAYER",c_blue,c_ltgray,c_red,c_ltgray,1);
		draw_text(xx,yy2,"TUTORIAL")
		draw_text(xx,yy3,"EXIT")
		break;	
	}
	case options.training:
	{
		draw_text(xx,yy,"TWO PLAYER")
		draw_text(xx,yy1,"SINGLE PLAYER")
		draw_text_color(xx,yy2,"TUTORIAL",c_blue,c_ltgray,c_red,c_ltgray,1);
		draw_text(xx,yy3,"EXIT")
		break;	
	}
	case options.exit_game:
	{
		draw_text(xx,yy,"TWO PLAYER")
		draw_text(xx,yy1,"SINGLE PLAYER")
		draw_text(xx,yy2,"TUTORIAL")
		draw_text_color(xx,yy3,"EXIT",c_blue,c_ltgray,c_red,c_ltgray,1);
		break;	
	}
	
}