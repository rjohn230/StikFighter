/// @player set up
// You can write your code in this editor
combo[0]=0; // Punch Punch Kick combo
combo[1]=0; // Kick Kick
flipped=false;
enum stance_state
{
	standing,
	jumping,
	kneeling,
	blocking,
	hurting_high,
	hurting_fall,
	falling
}
curr_stance_state= stance_state.standing;
strike_ready=true;


I_am_player=1;

mv=5;

I_am_alive=instance_exists(obj_player)


