current_hp = obj_Player.hp;
new_hp = current_hp - damage;

if (new_hp >= 0) {
	obj_Player.hp = new_hp;
} else {
	obj_Player.hp = 0;	
}

// TODO: play sound
audio_play_sound(snd_Lava_Hiss, 1, 0);
