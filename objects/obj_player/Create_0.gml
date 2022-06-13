moving = false;
target_x = x;
target_y = y;

// Initiate player stats
hp_max = 100;
mana_max = 100;
energy_max = 10;
hp = hp_max;
mana = mana_max;
energy = energy_max;

// Load player Armor
layer_create(-5, "Armor");
armor = instance_create_layer(x, y, "Armor", obj_Leather_Armor_Torso);

with(armor) {
	owner = other;
}

audio_play_sound(snd_Background_Music_1, 1, 1);
