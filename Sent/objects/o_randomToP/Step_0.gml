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
	if(instance_exists(oPlayer))
	{
		var _d = point_direction(x,y,oPlayer.x,oPlayer.y);
		 _d += irandom_range(-16,16);
		var _sp = irandom_range(1,3);
		scr_create_bullet(x,y,3,_sp + global.bossStage,_d,o_customBullet,spr_bossBu2);
		
		_times--;
	}
	else _times = -1;
}
else instance_destroy();
