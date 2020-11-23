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
			var _o = instance_create_depth(8,_y1,1,e_sinNgang);
			_o.direction = 0;
			_y1 += 64;
			break;
		}
		case 1:
		{
			var _o = instance_create_depth(360,_y2,1,e_sinNgang);
			_o.direction = 180;
			_y2 += 64;
			break;
		}
		case 2:
		{
			var _o = instance_create_depth(8,_y1,1,e_sinNgang);
			_o.direction = 0;
			var _o1 = instance_create_depth(360,_y2,1,e_sinNgang);
			_o1.direction = 180;
			_y1 += 64;
			_y2 += 64;
			break;
		}
	}
	_return_min++;
	if(_return_min == 3)
	{
		_y1 = min_y1;_y2 = min_y2;
		_return_min = 0;
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