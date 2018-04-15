/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_start_menu)
xx=room_width/3;
yy=room_height/2;

yy1=yy+64
yy2=yy+128



switch choice
{
	case game_menu_options.restart:
	{
		draw_text_color(xx,yy,"RESTART",c_red,c_red,c_red,c_red,1);
		draw_text_color(xx,yy1,"MAIN MENU", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy2,"CHARACTER SELECT", c_black,c_black,c_black,c_black,1);
		break;	
	}
	case game_menu_options.main_menu:
	{
		draw_text_color(xx,yy,"RESTART", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy1,"MAIN MENU",c_red,c_red,c_red,c_red,1);
		draw_text_color(xx,yy2,"CHARACTER SELECT", c_black,c_black,c_black,c_black,1);
		break;	
	}
	case game_menu_options.character_select:
	{
		draw_text_color(xx,yy,"RESTART", c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy1,"MAIN MENU",c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy2,"CHARACTER SELECT",c_red,c_red,c_red,c_red,1);
		break;	
	}
	
}
rectangle_xx1=xx+200;
rectangle_yy=yy-200;
endxx=rectangle_xx1+300;
endyy=rectangle_yy+300;
