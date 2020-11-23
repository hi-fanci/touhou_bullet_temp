if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	exit;
}

x += lengthdir_x(_speed/2,direction);
i++;
y += sin(i/10)*_speed;

_timeafter--;	
if(_timeafter < 0)
{
	for(var _i = _d; _i < _d + 360; _i += 20)
	{
		scr_create_bullet(x,y,-1,_spd,_i,o_customBullet,spr_Budefault);
	}
	audio_play_sound(snd_circleShoot,0,0);
	_timeafter = 31-global.bossStage;
}

if(enemy_hp < 0)
{
	instance_create_depth(x,y,-1,o_explosion);
	instance_destroy();
}