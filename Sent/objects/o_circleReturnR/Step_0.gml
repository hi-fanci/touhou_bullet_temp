// Inherit the parent event
event_inherited();
if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	exit;
}

if(_times > 0)
{
	if(_timeafter < 0)
	{
		for(var _i = _dir; _i < _dir  + 360; _i += 15)
		{
			scr_create_bullet(x,y,4,_spd,_i,o_customBullet,spr_bossBu2);
		}
		
		_timeafter = 20;
		_times--;
	}
	else
	{
		_timeafter--;
	}
}
else instance_destroy();
