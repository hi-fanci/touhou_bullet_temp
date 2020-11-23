if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	exit;
}

if(times > 0)
{
	timetoCreate--;
	if(timetoCreate < 0)
	{
		var _xx = random_range(1,5);
		instance_create_depth(_xx*32,0,1,e_circleThang);
		if(times == _waveCreate)
		{
			global.waveCreate = 0;
		}
		times--;
		timetoCreate = maxtimetoCreate;
	}
}
else
{
	global.Points += global.EWave*256;
	instance_destroy();
}