if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	exit;
}

timetoCreate--;
if(timetoCreate < 0)
{
	switch(_xx)
	{
		case 0:
		{
			instance_create_depth(48,8,1,e_1vienThang);
			break;
		}
		case 1:
		{
			instance_create_depth(304,8,1,e_1vienThang);
			break;
		}
		case 2:
		{
			instance_create_depth(304,8,1,e_1vienThang);
			instance_create_depth(48,8,1,e_1vienThang);
			break;
		}
	}
	
	if(times == _waveCreate)
	{
		global.waveCreate = 0;
	}
	times--;
	timetoCreate = maxtimetoCreate;
}

if(times < 0)
{
	global.Points += global.EWave*256;
	instance_destroy();
}