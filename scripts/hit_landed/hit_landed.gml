var damage=argument0;
var boost=argument1;

if(I_am_player==1)
{
	obj_battle_controller.player_one_hp=obj_battle_controller.player_one_hp-damage;
	obj_battle_controller.player_two_energy=obj_battle_controller.player_two_energy+boost;
	
}
else
{
	obj_battle_controller.player_two_hp=obj_battle_controller.player_two_hp-damage;
	obj_battle_controller.player_one_energy=obj_battle_controller.player_one_energy+boost;
}



