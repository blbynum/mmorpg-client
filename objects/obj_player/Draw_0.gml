switch(dir) {
	case "LEFT":
		sprite_index = spr_Hero_Left;
		break;
	case "RIGHT":
		sprite_index = spr_Hero_Right;
		break;
	case "UP":
		sprite_index = spr_Hero_Up;
		break;
	case "DOWN":
		sprite_index = spr_Hero_Down;
		break;
}

if (moving) {
	draw_sprite(sprite_index, image_index, x, y);
} else {
	draw_sprite(sprite_index, 0, x, y);
}


// Get text coords
var text_name = name;
var text_x = (x + (sprite_width / 2)) - (string_width(name) / 2);   // center text
var text_y = y - 10;                                                // just above head

// Debug x and y
//show_debug_message("user=" + text_name + ", x=" + string(text_x) + ", y=" + string(text_y))

draw_text(text_x, text_y, text_name);
