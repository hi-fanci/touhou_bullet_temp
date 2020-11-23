if(room == rm_Menu)
{
	if(!audio_is_playing(snd_menu))
	{
		audio_stop_all();
		audio_play_sound(snd_menu,0,1);
	}
}
else
{
	switch(global.bossStage)
	{
		case 1:
		
			if(!audio_is_playing(snd_bodys1))
				{
					audio_stop_all();
					audio_play_sound(snd_bodys1,0,1);
				}
			
			break;
		case 2:
		
			if(!audio_is_playing(snd_bodys2))
				{
					audio_stop_all();
					audio_play_sound(snd_bodys2,0,1);
				}
			
			break;
		case 3:
		
			if(!audio_is_playing(snd_bodys3))
				{
					audio_stop_all();
					audio_play_sound(snd_bodys3,0,1);
				}
			
			break;
		case 4:
		
			if(!audio_is_playing(snd_bodys4))
				{
					audio_stop_all();
					audio_play_sound(snd_bodys4,0,1);
				}
			
			break;
		case 5:
		
			if(!audio_is_playing(snd_bodys5))
				{
					audio_stop_all();
					audio_play_sound(snd_bodys5,0,1);
				}
			
			break;
		case 6:
		
			if(!audio_is_playing(snd_bodys6))
				{
					audio_stop_all();
					audio_play_sound(snd_bodys6,0,1);
				}
			
			break;
	}
}