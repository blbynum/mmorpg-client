event_inherited();

if(string_length(txt_Username.text) > 0 && string_length(txt_Password.text) > 0) {
	
	var register_packet = buffer_create(1, buffer_grow, 1);
	buffer_write(register_packet, buffer_string, "register");
	buffer_write(register_packet, buffer_string, txt_Username.text);
	buffer_write(register_packet, buffer_string, txt_Password.text);
	
	network_write(Network.socket, register_packet);
	
} else {
	show_message("Error: Username or password cannot be blank...");
}