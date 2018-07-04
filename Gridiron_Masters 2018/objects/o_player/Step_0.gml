///Move and sprint
scr_move_sprint();

///Control sprites
speed_up = 5;
//idle
if hspd == 0 and vspd == 0 {
	sprite_index = s_base_idle;
	image_speed = .7
}
//left and right
if hspd < 0 {
	sprite_index = s_base_left;
	image_speed = hspd/5
} else if hspd > 0 {
	sprite_index = s_base_right;
	image_speed = hspd/speed_up
} else if vspd > 0 {
	sprite_index = s_base_up;
	image_speed = vspd/speed_up
} else if vspd < 0 {
	sprite_index = s_base_down;
	image_speed = vspd/speed_up
} 

///Drop ball when tackled in a 10r circle
if collision_circle(x, y, 10, o_enemy, false, true) and has_ball == true {
	instance_create_depth(x+10, y, 0, o_ball);
	has_ball = false;
}

