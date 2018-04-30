/// @player set up
// You can write your code in this editor
combo[0]=0; // Punch Punch Kick combo
combo[1]=0; // Kick Kick
flipped=false;
shield_hp=1;

enum stance_state
{
	standing,
	jumping,
	kneeling,
	blocking,
	hurting_high,
	hurting_fall,
	dying
}
curr_stance_state= stance_state.standing;
strike_ready=true;


I_am_player=1;

mv=6.5;

I_am_alive=instance_exists(obj_player)


// displays correct sprites

if(!variable_global_exists("player_one_choice"))
{
		left_punch=spr_punch;
		right_punch=spr_punch_right;
		front_kick = spr_kick;
		side_kick= spr_kick_side;
		idle=spr_idle;
		on_fire=spr_on_fire;
		standing_hurt=spr_standing_hurt;
		crouched= spr_crouched;
		get_up= spr_get_up;
		leg_sweep=spr_leg_sweep;
		head_kick=spr_combo_kick;
		uppercut=spr_uppercut;
		air_punch=spr_air_punch;
		air_hurt=spr_air_hurt;
		back_flip=spr_back_flip;
		front_flip=spr_forward_flip;
		special_move=spr_special;
		laser=spr_laser;
		shield=spr_block_0;
}
else
{

switch global.player_one_choice

{
	case choice_player.black_player:
	{
		left_punch=spr_punch;
		right_punch=spr_punch_right;
		front_kick = spr_kick;
		side_kick= spr_kick_side;
		idle=spr_idle;
		on_fire=spr_on_fire;
		standing_hurt=spr_standing_hurt;
		crouched= spr_crouched;
		get_up= spr_get_up;
		leg_sweep=spr_leg_sweep;
		head_kick=spr_combo_kick;
		uppercut=spr_uppercut;
		air_punch=spr_air_punch;
		air_hurt=spr_air_hurt;
		back_flip=spr_back_flip;
		front_flip=spr_forward_flip;
		special_move=spr_special;
		laser=spr_laser;
		shield=spr_block_0;
		
		break;
	}
	
		case choice_player.red_player:
	{
		left_punch=spr_punch_2;
		right_punch=spr_punch_right_2;
		front_kick = spr_kick_2;
		side_kick= spr_kick_side_2;
		idle=spr_idle_2;
		on_fire=spr_on_fire_2;
		standing_hurt=spr_standing_hurt_2;
		crouched= spr_crouched_2;
		get_up= spr_get_up_2;
		leg_sweep=spr_leg_sweep_2;
		head_kick=spr_combo_kick_2;
		uppercut=spr_uppercut_2;
		air_punch=spr_air_punch_2;
		air_hurt=spr_air_hurt_2;
		back_flip=spr_back_flip_2;
		front_flip=spr_forward_flip_2;
		special_move=spr_special_2;
		laser=spr_laser_2;
		shield=spr_block_2;
		break;
	}
	
		case choice_player.purple_player:
	{
		left_punch=spr_punch_1;
		right_punch=spr_punch_right_1;
		front_kick = spr_kick_1;
		side_kick= spr_kick_side_1;
		idle=spr_idle_1;
		on_fire=spr_on_fire_1;
		standing_hurt=spr_standing_hurt_1;
		crouched= spr_crouched_1;
		get_up= spr_get_up_1;
		leg_sweep=spr_leg_sweep_1;
		head_kick=spr_combo_kick_1;
		uppercut=spr_uppercut_1;
		air_punch=spr_air_punch_1;
		air_hurt=spr_air_hurt_1;
		back_flip=spr_back_flip_1;
		front_flip=spr_forward_flip_1;
		special_move=spr_special_1;
		laser=spr_laser_1;
		shield=spr_block_1;
		break;
	}
	
}

}
sprite_index=idle
