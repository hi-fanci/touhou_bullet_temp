//khung hinh giua
x = clamp(x,view_w_half-shake_remain,room_width-view_w_half+shake_remain);
y = clamp(y,view_h_half-shake_remain,room_height-view_h_half-shake_remain);

//rung man hinh
if(shake_remain > 0)
{
x += random_range(-shake_remain,shake_remain)/2;
y += random_range(-shake_remain,shake_remain)/2;
shake_remain--;

}

//update cam
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
