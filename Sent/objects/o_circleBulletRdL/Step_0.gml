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
		var _d = _dir + irandom_range(-8,8);
		var _sp = irandom_range(1,3);
		scr_create_bullet(x,y,3,_sp+global.bossStage,_d,o_customBullet,spr_bossBu0);
		
		_dir -= 15;
		_times--;
	}
	else instance_destroy();