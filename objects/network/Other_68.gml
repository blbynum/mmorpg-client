switch(async_load[? "type"]) 
{
	
	case network_type_data:
		
		buffer_copy(async_load[? "buffer"], 0, async_load[? "size"], savedbuffer, buffer_tell(savedbuffer));
		buffer_seek(savedbuffer, buffer_seek_relative, async_load[? "size"] + 1);
		
		while (true) 
		{
			
			var size = buffer_peek(savedbuffer, reading, buffer_u8);
			
			if(buffer_get_size(savedbuffer) >= reading + size) {
				
				buffer_copy(savedbuffer, reading, size, cutbuffer, 0);
				buffer_seek(cutbuffer, 0, 1);
				
				handle_packet(cutbuffer);
				
				if (buffer_get_size(savedbuffer) != reading+size) {
					reading += size;	
				} else {
					buffer_resize(savedbuffer, 1);
					reading = 0;
					break;
				}
				
			} else {
				break;
			}
				
			
		}
		
		
		break;
		
}