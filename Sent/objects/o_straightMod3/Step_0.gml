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
		for(var _i = _dir; _i < _dir  + 360; _i += 6)
		{
			_bu_mod3 += 1;
			if(_bu_mod3 mod 3 == 0)
			scr_create_bullet(x,y,0,_spd,_i,o_customBullet,spr_bossBu0);
			else
			scr_create_bullet(x,y,6,_spd,_i,o_customBullet,spr_bossBu1);
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