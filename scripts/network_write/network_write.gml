function network_write(socket, buffer){
	
	// Init
	var packetSize = buffer_tell(buffer);
	var bufPacket = buffer_create(1, buffer_grow, 1);
	
	// Write the size, and the packet... into new buffer
	buffer_write(bufPacket, buffer_u8, packetSize + 1);
	buffer_copy(buffer, 0, packetSize, bufPacket, 1);
	buffer_seek(bufPacket, 0, packetSize + 1);
	
	// Send the packet
	network_send_raw(socket, bufPacket, buffer_tell(bufPacket));
	
	// Destroy the buffers
	buffer_delete(buffer);
	buffer_delete(bufPacket);
}