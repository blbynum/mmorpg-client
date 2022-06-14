moving = false;
target_x = x;
target_y = y;
dir = "DOWN";
stop_count = 0;

// Initiate player stats
hp_max = 100;
hp = hp_max;

// Load player Armor
layer_create(-5, "Armor");
armor = instance_create_layer(x, y, "Armor", obj_Leather_Armor_Torso);

with(armor) {
	owner = other;
}

