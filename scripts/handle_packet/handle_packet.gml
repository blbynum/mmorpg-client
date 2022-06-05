// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_packet(argument0){
	//argument0: data_buffer
	var command = buffer_read(argument0, buffer_string);
	show_debug_message("Networking Event: " + string(command));

	switch(command) {
	
		case "HELLO":
			server_time = buffer_read(argument0, buffer_string);
			room_goto_next();
			show_debug_message("Server welcomes you @ " + server_time);
			break;
		
	}
}