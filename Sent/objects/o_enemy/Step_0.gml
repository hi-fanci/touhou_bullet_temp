if(timeChange < 0){
	
	if(randomState == 0){
		bulletState = irandom_range(0, 6);
		randomState = 1;
	}
	timeCreate--;
	if(timeCreate < 0){
		timeCreate = maxTimeCreate;
		timeChange = maxTimeChange;
		randomState = 0;
		return;
	}
	if(timeCreate % 100 == 0)
	{
		var _randomBullet = irandom_range(0, 14);
		switch(_randomBullet){
			case 0:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_straightBullet);
				break;
			}
			case 1:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleBulletR);
				break;
			}
			case 2:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleBulletL);
				break;
			}
			case 3:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleBulletLtoR);
				break;
			}
			case 4:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleBulletRtoL);
				break;
			}
			case 5:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleBulletRdL);
				break;
			}
			case 6:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleBulletRdR);
				break;
			}
			case 7:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleMulti2L);
				break;
			}
			case 8:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleMulti2R);
				break;
			}
			case 9:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleMulti4L);
				break;
			}
			case 10:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleMulti4R);
				break;
			}
			case 11:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleMulti2L2R);
				break;
			}
			case 12:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleReturnR);
				break;
			}
			case 13:{
				var _bullet = instance_create_layer(x, y, "Bullets", o_circleReturnR);
				break;
			}
			
			case 14: {
				var _bullet = instance_create_layer(x, y, "Bullets", o_straightMod3);
				break;
			}
			default: {
				var _bullet = instance_create_layer(x, y, "Bullets", o_straightMod3);
				break;
			}
		}
		//var _bullet = instance_create_layer(x, y, "Bullets", o_circleBulletL);
		//scr_create_bullet(x,y,bulletState,_speed,_direction,o_customBullet,spr_Budefault);
		//_d += 15;
	}
}
else{
	timeChange--;
}
