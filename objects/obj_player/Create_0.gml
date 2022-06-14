moving = false;
target_x = x;
target_y = y;
regen_cooldown = 3;
regen_cooldown_counter = 0;

// Initiate player stats
hp_max = 100;
mana_max = 100;
energy_max = 10;
hp_regen = 5;
mana_regen = 5;
energy_regen = 1;
hp = hp_max;
mana = mana_max;
energy = energy_max;
hp_last = hp;
mana_last = mana;
energy_last = energy;

// regen alarm
alarm[0] = room_speed;

// Load player Armor
layer_create(-5, "Armor");
armor = instance_create_layer(x, y, "Armor", obj_Leather_Armor_Torso);

with(armor) {
	owner = other;
}

audio_play_sound(snd_Background_Music_1, 1, 1);
