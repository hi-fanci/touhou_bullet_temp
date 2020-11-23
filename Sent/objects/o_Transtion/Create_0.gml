enum Trans_mode{
	Transin, Transout
}
image_alpha = 0;
Trans_target = rm_Grass0;
Disk_Trans = Trans_mode.Transout;
steps = 32;
radi = 0;

xc = camera_get_view_width(view_camera[0]);
yc = camera_get_view_height(view_camera[0]);

x = xc/2;
y = yc/2;