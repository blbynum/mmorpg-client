draw_self();

// Get text coords
var text_name = name;
var text_x = (x + (sprite_width / 2)) - (string_width(name) / 2);   // center text
var text_y = y - 10;                                                // just above head

// Debug x and y
//show_debug_message("user=" + text_name + ", x=" + string(text_x) + ", y=" + string(text_y))

draw_text(text_x, text_y, text_name);
