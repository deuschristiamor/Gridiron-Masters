///CREATE BALL AT THE ANGLE OF BALL CANNON AND SET BALL SPEED

if (o_input.throw_key and testQB.has_ball == 1) {
	var target = o_target.throw_target;
	image_angle = scr_angle_to_intercept(10, target, true)
	instance_create_depth(x+lengthdir_x(lenX, image_angle)- lengthdir_y(lenY, image_angle), y+lengthdir_y(lenX, image_angle)+lengthdir_x(lenY, image_angle), 0, o_test_ball)
	o_ball_cannon1.thrown = true;
	
	//Get distance and direction from throw target
	var speed_limit = 300;
	var dis = point_distance(o_test_ball.x, o_test_ball.y, target.x, target.y);
	var dir = point_direction(x, y, target.x, target.y);
	if dis >= speed_limit {
		dis = speed_limit;
	} 

	o_test_ball.speed = dis/30;
	o_test_ball.direction = image_angle;
	o_test_ball.zvel = dis/-50;
	o_test_ball.spin = true;
	o_test_ball.spinDir = direction;
	o_test_ball.dir_Change = true;

	
	
	//REMOVE BALL FROM PLAYER
	testQB.has_ball = 0;

}

