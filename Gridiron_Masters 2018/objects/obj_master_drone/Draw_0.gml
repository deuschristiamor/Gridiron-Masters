/// @description Insert description here
draw_sprite(s_shadow, 1, x-1, y+8);
draw_self();
image_blend = c_red
// Draw Info
//draw_text(x+10, y, string(offset_x))
//draw_text(x, y+10, string(offset_y))
//draw_text(x, y+20, string(instance_number(o_sb_input_control)))

//Draw Speed
draw_text_transformed(x-10, y+10, "Max Speed: " + string(max_speed), .5, .5, image_angle);

	//draw ball
	if has_ball == true and obj_drone_path.has_ball == false {
		draw_sprite(s_bal, 0, x+5, y);
	}