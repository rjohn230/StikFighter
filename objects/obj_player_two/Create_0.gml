/// @player set up
// You can write your code in this editor
combo[0]=0; // Punch Punch Kick combo
combo[1]=0; // Kick Kick
flipped=false;
enum two_stance_state
{
	standing,
	jumping,
	kneeling,
	blocking,
	hurting_high,
	hurting_fall
}
//hurt_process=false;
curr_stance_state= stance_state.standing;
strike_ready=true;

I_am_player=2;

mv=5;