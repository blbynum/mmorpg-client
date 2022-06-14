/// @description Regen

if (hp < 1) {
	alarm[0] = -1;	
} else {
	alarm[0] = room_speed;
}

if (hp >= 1 && regen_cooldown_counter = 0) {
	var hp_new = hp + hp_regen;
	var mana_new = mana + mana_regen;
	var energy_new = energy + energy_regen;

	if (hp < hp_max) {
		if(hp_new > hp_max) {
			hp = hp_max;
		} else {
			hp = hp_new;
		}
	}

	if (mana < mana_max) {
		if (mana_new > mana_max) {
			mana = mana_max;	
		} else {
			mana = mana_new;	
		}
	}

	if (energy < energy_max) {
		if (energy_new > energy_max) {
			energy = energy_max;
		} else {
			energy = energy_new;	
		}
	}
} else {
	regen_cooldown_counter--;
}




