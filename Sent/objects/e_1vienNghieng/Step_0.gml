if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	exit;
}

_speed += 0.05;
x += lengthdir_x(_speed,direction);
y += lengthdir_y(_speed,direction);

if(_times > 0)
{
	_timeafter--;	
	if(_timeafter < 0)
	{
		var _d = irandom(360);
		if(instance_exists(oPlayer))
		{
			_d = point_direction(x,y,oPlayer.x,oPlayer.y);
		}
		scr_create_bullet(x,y,-1,_spd,_d,o_customBullet,spr_Budefault);
		audio_play_sound(snd_shoot1,0,0);
		_timeafter = 42-+global.bossStage;;
		_times--;	
	}
}

if(enemy_hp < 0)
{
	instance_create_depth(x,y,-1,o_explosion);
	instance_destroy();
}