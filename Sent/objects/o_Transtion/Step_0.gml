switch(Disk_Trans)
{
	case Trans_mode.Transout:

		if(radi >= max(
			point_distance(x,y,0,0),
			point_distance(x,y,xc*2,0),
			point_distance(x,y,0,yc*2),
			point_distance(x,y,xc*2,yc*2,)
		))
		{
			Disk_Trans = Trans_mode.Transin;
		}
		if(image_alpha<1) image_alpha += 0.01;
		radi += 10;
		break;
	
	case Trans_mode.Transin:
			x = oCamera.x;
			y = oCamera.y;
		if(image_alpha>0)
		{
			image_alpha -= 0.01;
			
		}
		if(image_alpha <= 0)
		{
			draw_set_alpha(1);
			room_goto(Trans_target);
			global.changeRoom = 0;
			instance_destroy(self);
		}
			radi -= 12;

}