if ( target_x > x ) { x += 4 }
if ( target_x < x ) { x -= 4 }
if ( target_y > y ) { y += 4 }
if ( target_y < y ) { y -= 4 }

if ( target_x == x && target_y == y ) { 
	moving = false;
	//sprite_index = spr_Hero_Down;
	image_speed = 0;
}


if ((keyboard_check(vk_left) || (keyboard_check(ord("A")))) && !moving && place_free(x - 33, y)) {
	target_x -= 32;
	moving = true;
	event_user(0);
	sprite_index = spr_Hero_Left;
	image_speed = 0.3;
	dir = "LEFT";
}

if ((keyboard_check(vk_right) || (keyboard_check(ord("D")))) && !moving && place_free(x + 33, y)) {
	target_x += 32;
	moving = true;
	event_user(0);
	object_set_sprite(obj_Player, spr_Hero_Right);
	sprite_index = spr_Hero_Right
	image_speed = 0.3;
	dir = "RIGHT";
}

if ((keyboard_check(vk_up) || (keyboard_check(ord("W")))) && !moving && place_free(x, y - 33)) {
	target_y -= 32;
	moving = true;
	event_user(0);
	object_set_sprite(obj_Player, spr_Hero_Up);
	sprite_index = spr_Hero_Up
	image_speed = 0.3;
	dir = "UP";
}

if ((keyboard_check(vk_down) || (keyboard_check(ord("S")))) && !moving && place_free(x, y + 33)) {
	target_y += 32;
	moving = true;
	event_user(0);
	object_set_sprite(obj_Player, spr_Hero_Down);
	sprite_index = spr_Hero_Down
	image_speed = 0.3;
	dir = "DOWN";
}
