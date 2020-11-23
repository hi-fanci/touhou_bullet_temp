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
		scr_create_bullet(x,y,3,_spd,_dir,o_customBullet,spr_Budefault);
		_dir += 15;
		
		_times--;
	}
	else instance_destroy();
