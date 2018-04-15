/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red)

draw_set_font(font_game_hud)

// player one hud

player_health_xx=40;
player_health_yy=40;

player_energy_xx=player_health_xx;
player_energy_yy=player_health_yy+20;

// health bar starting point
player_health_bar_xx= player_health_xx+100;
player_health_bar_yy= player_health_yy;

// health bar ending point
player_health_bar_end_xx= player_health_bar_xx+150;
player_health_bar_end_yy= player_health_bar_yy+20;



// energy bar starting point
player_energy_bar_xx= player_energy_xx+100;
player_energy_bar_yy= player_energy_yy;

// enegy bar ending point
player_energy_bar_end_xx= player_energy_bar_xx+75;
player_energy_bar_end_yy= player_energy_bar_yy+20;

// health energy for player one
draw_text(player_health_xx,player_health_yy,"HEALTH");
draw_text(player_energy_xx,player_energy_yy,"ENERGY");

// health Bar
draw_healthbar(player_health_bar_xx,player_health_bar_yy,player_health_bar_end_xx,player_health_bar_end_yy,player_one_hp,c_black,c_red,c_green,0,true,true)

// energy Bar
draw_healthbar(player_energy_bar_xx,player_energy_bar_yy,player_energy_bar_end_xx,player_energy_bar_end_yy,player_one_energy,c_black,c_gray,c_blue,0,true,true)
// player one hud ended





// player two

player_two_health_xx=room_width-300;
player_two_health_yy=40;

player_two_energy_xx=player_two_health_xx;
player_two_energy_yy=player_two_health_yy+20;

// health bar starting point
player_two_health_bar_xx= player_two_health_xx+100;
player_two_health_bar_yy= player_two_health_yy;

// health bar ending point
player_two_health_bar_end_xx= player_two_health_bar_xx+150;
player_two_health_bar_end_yy= player_two_health_bar_yy+20;



// energy bar starting point
player_two_energy_bar_xx= player_two_energy_xx+100;
player_two_energy_bar_yy= player_two_energy_yy;

// enegy bar ending point
player_two_energy_bar_end_xx= player_two_energy_bar_xx+75;
player_two_energy_bar_end_yy= player_two_energy_bar_yy+20;

// health energy for player one
draw_text(player_two_health_xx,player_two_health_yy,"HEALTH");
draw_text(player_two_energy_xx,player_two_energy_yy,"ENERGY");

// health Bar
draw_healthbar(player_two_health_bar_xx,player_two_health_bar_yy,player_two_health_bar_end_xx,player_two_health_bar_end_yy,player_two_hp,c_black,c_red,c_green,0,true,true)

// energy Bar
draw_healthbar(player_two_energy_bar_xx,player_two_energy_bar_yy,player_two_energy_bar_end_xx,player_two_energy_bar_end_yy,player_two_energy,c_black,c_gray,c_blue,0,true,true)


//player two hud ended






switch(current_round)
{ 
	case round_number.round_one:
	{
		draw_text(room_width*.45,40,"ROUND ONE");
		break;	
	}
	
	case round_number.round_two:
	{
		draw_text(room_width*.45,40,"ROUND TWO");
		break;	
	}
	
	case round_number.round_three:
	{
		draw_text(room_width*.45,40,"ROUND THREE");
		break;	
	}
	
	
}
if(count_down_round>0) draw_text(room_width/2,room_height/2,string(count_down_round))

if(match_over)
{
	if(player_one_round_win==2) draw_text(room_width/1.5,room_height/2,"PLAYER ONE WINS")
				else draw_text(room_width/1.5,room_height/2,"PLAYER TWO WINS")
					
}