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
	var _d90 = _dir + 90;
	var _d180 = _dir + 180;
	var _d270 = _dir - 90;
	scr_create_bullet(x,y,2,_spd,_dir,o_customBullet,spr_bossBu1);
	scr_create_bullet(x,y,2,_spd,_d90,o_customBullet,spr_bossBu0);
	scr_create_bullet(x,y,2,_spd,_d180,o_customBullet,spr_bossBu1);
	scr_create_bullet(x,y,2,_spd,_d270,o_customBullet,spr_bossBu0);
	
	_dir -= 15;
	_times--;
}
else
instance_destroy();
