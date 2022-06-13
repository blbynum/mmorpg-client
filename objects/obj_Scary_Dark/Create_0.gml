self_destruct = false;
count = 0;
repeat_times = [37, 40, 50, 55, 64, 79, 86];
repeat_index = random_range(0, array_length(repeat_times) - 1);
repeat_value = repeat_times[repeat_index];

audio_play_sound(snd_Radio_Creepy, 1, 1);
