//show_debug_message("Drawing obj_Leather_Armor_Torso");
//show_debug_message(dir);
//show_debug_message(x);
//show_debug_message(y);
//show_debug_message(moving);

switch(dir) {
	case "LEFT":
		sprite_index = spr_Leather_Armor_Torso_Left;
		break;
	case "RIGHT":
		sprite_index = spr_Leather_Armor_Torso_Right;
		break;
	case "UP":
		sprite_index = spr_Leather_Armor_Torso_Up
		break;
	case "DOWN":
		sprite_index = spr_Leather_Armor_Torso_Down;
		break;
}

if (moving) {
	draw_sprite(sprite_index, image_index, x, y);
} else {
	draw_sprite(sprite_index, 0, x, y);
}
