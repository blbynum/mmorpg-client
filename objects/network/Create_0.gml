// ivars
savedbuffer = buffer_create(1, buffer_grow, 1);
reading = 0;
cutbuffer = buffer_create(1, buffer_grow, 1);

// initiate the socker
socket = network_create_socket(network_socket_tcp);
//network_connect_raw(socket, "127.0.0.1", 8082);
network_connect_raw(socket, "3.15.76.203", 8082);
