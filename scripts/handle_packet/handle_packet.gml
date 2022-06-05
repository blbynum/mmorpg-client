function handle_packet(data_buffer){
	var command = buffer_read(data_buffer, buffer_string);
	show_debug_message("Networking Event: " + string(command));

	switch(command) {
	
		case "HELLO":
			server_time = buffer_read(data_buffer, buffer_string);
			room_goto_next();
			show_debug_message("Server welcomes you @ " + server_time);
			break;
		
		case "LOGIN":
			status = buffer_read(data_buffer, buffer_string);
			if(status == "TRUE") {
				
				target_room = buffer_read(data_buffer, buffer_string);
				target_x = buffer_read(data_buffer, buffer_u16);
				target_y = buffer_read(data_buffer, buffer_u16);
				name = buffer_read(data_buffer, buffer_string);
				
				goto_room = asset_get_index(target_room);
				room_goto(goto_room);
				
				// TODO: Initiate a player object on this room
				layer_create(-100, "Players");
				instance_create_layer(target_x, target_y, "Players", obj_Player, {
					name: other.name
				});
				
			} else {
				show_message("Login Failed.");	
			}
			break;
			
		case "REGISTER":
			status = buffer_read(data_buffer, buffer_string);
			if(status == "TRUE") {
				show_message("Register Success: Please Login.");	
			} else {
				show_message("Register Failed: Username Taken.");	
			}
			break;
			
	}
}