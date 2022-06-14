current_mana = obj_Player.mana;
new_mana = current_mana - mana_damage;

if (new_mana >= 0) {
	obj_Player.mana = new_mana;
} else {
	obj_Player.mana = 0;	
}
