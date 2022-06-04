/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 151DBE50
/// @DnDArgument : "code" "/// @description Initiate the connection$(13_10)$(13_10)socket = network_create_socket(network_socket_tcp);$(13_10)network_connect_raw(socket, "127.0.0.1", 8082);$(13_10)"
/// @description Initiate the connection

socket = network_create_socket(network_socket_tcp);
network_connect_raw(socket, "127.0.0.1", 8082);