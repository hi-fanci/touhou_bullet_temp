if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	exit;
}

if(_slowtimes > 0 && _slowafter == 0)
{
	_slowtimes--;
	_speed -= 0.6;
	
}
y += _speed;
if(_slowafter > 0)
_slowafter--;

if(_times > 0 && _slowtimes == 0 && _slowafter == 0)
{
	_timeafter--;	
	if(_timeafter < 0)
	{
		var _d = irandom(360);
		for(var _i = _d; _i < _d + 360; _i += 25)
		{
			scr_create_bullet(x,y,0,_spd,_i,o_customBullet,spr_Budefault);
		}
		audio_play_sound(snd_circleShoot,0,0);
		_timeafter = 12;
		_times--;	
	}
}

if(_times == 0 || enemy_hp < 0)
{
	instance_create_depth(x,y,-1,o_explosion);
	instance_destroy();
}