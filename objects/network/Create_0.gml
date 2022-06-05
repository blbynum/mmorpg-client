/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 151DBE50
/// @DnDArgument : "code" "/// @description Initiate the connection$(13_10)$(13_10)// ivars$(13_10)savedbuffer = buffer_create(1, buffer_grow, 1);$(13_10)reading = 0;$(13_10)cutbuffer = buffer_create(1, buffer_grow, 1);$(13_10)$(13_10)// initiate the socker$(13_10)socket = network_create_socket(network_socket_tcp);$(13_10)network_connect_raw(socket, "127.0.0.1", 8082);$(13_10)"
/// @description Initiate the connection

// ivars
savedbuffer = buffer_create(1, buffer_grow, 1);
reading = 0;
cutbuffer = buffer_create(1, buffer_grow, 1);

// initiate the socker
socket = network_create_socket(network_socket_tcp);
network_connect_raw(socket, "127.0.0.1", 8082);