/// @description
draw_text_transformed(x-10, y+10, "Target: " + string(throw_target), .5, .5, image_angle);
if instance_exists(o_ball){
	draw_text_transformed(x-10, y+20, "Ball Speed: " + string(o_ball.speed), .5, .5, 0);
	//draw_text_transformed(x-10, y+30, "Target Speed: " + string(throw_target.max_speed), .5, .5, 0);
}
draw_self();