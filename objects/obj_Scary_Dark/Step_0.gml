play= false;



if (count = 0) {
	play = true;	
}

if(count = repeat_value) {
	play = true;
	count = 1;
	repeat_index = random_range(0,array_length(repeat_times) - 1);
	repeat_value = repeat_times[repeat_index];
}

if (play) {
	audio_play_sound(snd_Imatree, 1, 0);
}

count++;

