draw_self();

if(focused) {
	draw_rectangle(x,y, x + (16 * image_xscale), y + (16 * image_yscale), 4);	
}

if(string_length(text) > 0 || focused) {
	draw_text(x + 3, y + 8, string(text));	
} else {
	draw_text(x + 3, y + 8, string(placeholder));	
}
