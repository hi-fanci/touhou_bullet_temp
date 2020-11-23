if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	image_speed = 0;
	exit;
}
else
{
	image_speed = 1;
}
image_angle = direction;

x += lengthdir_x(_speed,direction);
y += lengthdir_y(_speed,direction);

switch(bu_state)
{
	case -1:
	
		if(x < 0 || x > 360 || y < 0 || y > 640)
		instance_destroy();
		break;
	case 0:
		_slowdown--;
		if(_slowdown < 0)
		{
			if(_speed > 1.5)
			{
				_speed -= 0.1;
			}
		}
		_destroyTime--;
		if(_destroyTime < 0)
			instance_destroy();
		break;
	case 1://right

			_destroyTime--;
			if(_destroyTime < 0)
			instance_destroy();
			direction += 1;
			_speed += 0.1;

		break;
	case 2://left
	
		_destroyTime--;
		if(_destroyTime < 0)
		{
			instance_destroy();
		}
			direction -= 1;
			_speed += 0.1;

	break;
	
	case 3://straight
		_destroyTime--;
		if(_destroyTime < 0)
		{
			instance_destroy();
		}
		_speed += 0.1;
	break;
	
	case 4://return right

		direction += 1;
		_destroyTime--;
		if(_destroyTime < 0)
		{
			instance_destroy();
		}
		
	break;
	case 5://return left

		direction -= 1;
		_destroyTime--;
		if(_destroyTime < 0)
		{
			instance_destroy();
		}
		
	break;
	case 6://mod3
		_slowdown_main--;
		if(_slowdown_main < 0)
		{
			if(_speed > 1.5)
			{
				_speed -= 0.1;
			}
		}
		_destroyTime--;
		if(_destroyTime < 0)
			instance_destroy();
		break;
}
