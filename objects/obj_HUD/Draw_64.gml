draw_set_color(c_white);
gui_x = 0;
gui_y = 0;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
margin_l = 5;
margin_r = - 5;
margin_t = 2;
margin_b = - 2;
//draw_text(gui_x,gui_x, "GUI Mouse X-Y:");
//draw_text(gui_y,gui_y, string_format(gui_x,4,0)+","+string_format(gui_y,4,0));

p_name = obj_Player.name;
p_hp_max = obj_Player.hp_max;
p_mana_max = obj_Player.mana_max;
p_energy_max = obj_Player.energy_max;
p_hp = obj_Player.hp;
p_mana = obj_Player.mana;
p_energy = obj_Player.energy;


tl_text = p_name;
tl_x = margin_l + gui_x;
tl_y = margin_t + gui_y;
draw_text(tl_x, tl_y, tl_text);

hp_l = tl_x;
hp_t = tl_y + string_height(tl_text);
hp_r = hp_l + (gui_width / 5);
hp_b = hp_t + 8;
hp_perc = p_hp / p_hp_max * 100;
draw_healthbar(hp_l, hp_t, hp_r, hp_b, hp_perc, c_black, c_red, c_lime, 0, true, true);

mana_l = hp_l;
mana_t = hp_b + 4;
mana_r = mana_l + (gui_width / 5);
mana_b = mana_t + 8;
mana_perc = p_mana / p_mana_max * 100;
draw_healthbar(mana_l, mana_t, mana_r, mana_b, mana_perc, c_black, c_aqua, c_blue, 0, true, true);

energy_l = mana_l;
energy_t = mana_b + 4;
energy_r = energy_l + (gui_width / 5);
energy_b = energy_t + 8;
energy_perc = p_energy / p_energy_max * 100;
draw_healthbar(energy_l, energy_t, energy_r, energy_b, energy_perc, c_black, c_orange, c_maroon, 0, true, true);

//bl_text = "BOTTOM LEFT";
//bl_x = margin_l + gui_x;
//bl_y = margin_b + gui_y + gui_height - string_height(bl_text);
//draw_text(bl_x, bl_y, bl_text);

//tr_text = "TOP RIGHT";
//tr_x = margin_r + gui_x + gui_width - string_width(tr_text);
//tr_y = margin_t + gui_y
//show_debug_message(tr_x);
//draw_text(tr_x, tr_y, tr_text);

//br_text = p_hp;
//br_x = margin_r + gui_x + gui_width - string_width(br_text);
//br_y = margin_b + gui_y + gui_height - string_height(br_text);
//draw_text(br_x, br_y, br_text);



//draw_healthbar(br_x, br_y + 15, br_x - gui_width / 5, br_y, p_mana, c_black, c_blue, c_blue, 1, true, true);
