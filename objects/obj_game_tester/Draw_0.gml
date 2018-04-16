/// @description Insert description here
// You can write your code in this editor
draw_text(x,y,string(gamepad_axis_value(0,gp_axislh)))
draw_text(x,y+100,string(gamepad_axis_value(0,gp_axislv)))
//draw_text(x,y+100,string(obj_player.combo[1]))
//sdraw_text(x,y+200,string(obj_player_two.sprite_index))