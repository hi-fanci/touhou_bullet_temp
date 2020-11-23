if(global.GameisPlay != true)
{
	if(global.GameisEnd == true)
	instance_destroy();
	exit;
}
y+=2;
//_speed += 0.05;
//x += lengthdir_x(_speed,direction);
//timetoCreate--;
//if(timetoCreate < 0)
//{
//	var _d = 270;
//	scr_create_bullet(x,y,-1,3+global.bossStage,_d,o_customBullet,spr_Budefault);
//	audio_play_sound(snd_shoot10,0,0);
//	timetoCreate = 8;
//}
//if(enemy_hp<=0)
//{
//	instance_create_depth(x,y,-1,o_explosion);
//	instance_destroy();
//}
