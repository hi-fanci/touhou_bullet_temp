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
			var _o = instance_create_depth(8,8,1,e_1vienNghieng);
			_o.direction = point_direction(8,8,360,384);
			break;
		}
		case 1:
		{
			var _o = instance_create_depth(360,8,1,e_1vienNghieng);
			_o.direction = point_direction(360,8,0,384);
			break;
		}
		case 2:
		{
			var _o = instance_create_depth(8,8,1,e_1vienNghieng);
			_o.direction = point_direction(0,0,360,384);
			var _o1 = instance_create_depth(360,8,1,e_1vienNghieng);
			_o1.direction = point_direction(360,8,0,384);
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