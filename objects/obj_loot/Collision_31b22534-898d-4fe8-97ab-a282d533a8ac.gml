/// @description Insert description here
// You can write your code in this editor
with(obj_battle_controller)
{
		star_power_p1=true
		alarm[0]= 30*10;
}
audio_play_sound(sound_loot_grab,2,false);
audio_stop_sound(sound_loot_energy)
instance_destroy();