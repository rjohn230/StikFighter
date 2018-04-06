/// @description Drawing menu options
// You can write your code in this editor
draw_set_font(font_start_menu)
xx=room_width/3;
yy=room_height/2;

yy1=yy+64
yy2=yy+128
yy3=yy+192


switch choice
{
	case options.two_player:
	{
		draw_text_color(xx,yy,"TWO PLAYER",c_red,c_red,c_red,c_red,1);
		draw_text_color(xx,yy1,"SINGLE PLAYER", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy2,"TUTORIAL", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy3,"EXIT", c_black,c_black,c_black,c_black,1);
		break;	
	}
	case options.single_player:
	{
		draw_text_color(xx,yy,"TWO PLAYER", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy1,"SINGLE PLAYER",c_red,c_red,c_red,c_red,1);
		draw_text_color(xx,yy2,"TUTORIAL",c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy3,"EXIT", c_black,c_black,c_black,c_black,1);
		break;	
	}
	case options.training:
	{
		draw_text_color(xx,yy,"TWO PLAYER", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy1,"SINGLE PLAYER",c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy2,"TUTORIAL",c_red,c_red,c_red,c_red,1);
		draw_text_color(xx,yy3,"EXIT", c_black,c_black,c_black,c_black,1);
		break;	
	}
	case options.exit_game:
	{
		draw_text_color(xx,yy,"TWO PLAYER", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy1,"SINGLE PLAYER",c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy2,"TUTORIAL",c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy3,"EXIT",c_red,c_red,c_red,c_red,1);
		break;	
	}
	
}