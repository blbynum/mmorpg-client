if ( target_x > x ) { 
	x += 4;
	dir = "RIGHT";
		if (!moving) {
			moving = true;
			image_speed = 0.3;
		}
}

if ( target_x < x ) { 
	x -= 4;
	dir = "LEFT";
		if (!moving) {
			moving = true;
			image_speed = 0.3;
		}
}

if ( target_y > y ) { 
	y += 4;
	dir = "DOWN";
		if (!moving) {
			moving = true;
			image_speed = 0.3;
		}
}

if ( target_y < y ) { 
	y -= 4;
	dir = "UP";
		if (!moving) {
			moving = true;
			image_speed = 0.3;
		}
}

if ( target_x == x && target_y == y && stop_count = 0 ) { 
	stop_count = 2;
}

if (!moving && image_speed != 0) {
	image_speed = 0;	
}

if (stop_count > 0) {
	stop_count--;
	if (stop_count = 0 && target_x == x && target_y == y) {
		moving = false;	
	}
}

