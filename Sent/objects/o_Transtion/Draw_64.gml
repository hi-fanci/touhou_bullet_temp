if(radi > 0)
{
	draw_set_alpha(image_alpha);
	steps = 32 + radi div 16;
	draw_set_color(c_white);
	draw_primitive_begin(pr_trianglefan);
	for(var i = 0; i < steps; i++)
	{
		draw_vertex(x+lengthdir_x(radi, 360*i/steps),
		y+lengthdir_y(radi, 360*i/steps));
	}
	draw_primitive_end();
	draw_set_color(c_white);
}
