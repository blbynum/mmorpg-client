gui_x = display_mouse_get_x();
gui_y = display_mouse_get_y();

capped = false;

if (!self_destruct && !capped) {
	image_speed = 0.1;	
}



show_debug_message(image_index);

if (self_destruct) {
	capped=false;
	image_speed = -0.4;
	if(image_index <= 0) {
		instance_destroy(self);
	}
}

if (!capped && !self_destruct && image_index >= 20.0) {
	capped = true;
	image_speed = 0;
}

draw_sprite(spr_Dark_Scary, image_index, gui_x, gui_y);

//if (capped) {
//	draw_sprite(spr_Dark_Scary, 20, gui_x, gui_y);
//} else {
//	draw_sprite(spr_Dark_Scary, image_index, gui_x, gui_y);
//}

