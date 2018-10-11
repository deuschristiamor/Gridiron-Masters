///CREATE BALL AT THE ANGLE OF BALL CANNON AND SET BALL SPEED

if (o_input.throw_key and o_quarterback.has_ball == 1) {
	image_angle = scr_angle_to_intercept(target.max_speed, target, true)
	instance_create_depth(x+lengthdir_x(lenX, image_angle)- lengthdir_y(lenY, image_angle), y+lengthdir_y(lenX, image_angle)+lengthdir_x(lenY, image_angle), 0, o_ball)
	var dis = point_distance(x, y, o_target.throw_target.x, o_target.throw_target.y);
	var dir = point_direction(x, y, o_target.throw_target.x, o_target.throw_target.y);

	o_ball.speed = dis/32;
	o_ball.direction = dir;
	o_ball.zvel = dis/-50;
	o_ball.spin = true;
	o_ball.spinDir = direction;
	o_ball.dir_Change = true;

	
	//REMOVE BALL FROM PLAYER
	o_quarterback.has_ball = 0;
}

