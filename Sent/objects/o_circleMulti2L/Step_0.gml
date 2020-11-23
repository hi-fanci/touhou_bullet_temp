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
	var _d = _dir + 180;
	scr_create_bullet(x,y,2,_spd,_dir,o_customBullet,spr_bossBu0);
	scr_create_bullet(x,y,2,_spd,_d,o_customBullet,spr_bossBu3);
	
	_dir -= 15;
	_times--;
}
else
instance_destroy();