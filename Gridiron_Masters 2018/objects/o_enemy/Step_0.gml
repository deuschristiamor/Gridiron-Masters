
//animation speed
image_speed = .5


//mp_potential_settings(30, 10, 3, true) --DEFAULTS--
//PURSUING THE CARRIER
//move to player on a grid path if they have the ball

if o_player.has_ball == true {
	mp_potential_path(path, o_player.x, o_player.y-12, 3, 1.5, 0);
	path_start(path, 3, path_action_stop, 0);
	state = pursuing_the_carrier
}

///PURSUING THE BALL
// Move to location of ball if it is on the field

if instance_exists(o_ball) and wait_to_get_ball == 0 {
	mp_potential_path(path, o_ball.x, o_ball.y, 3, 1.5, 0);
	path_start(path, 3, path_action_stop, 0);
	wait_to_get_ball = 5
	state = pursuing_the_ball;	
}

///EVADING THE PURSUIT
// Move to a location while holding the ball

if has_ball == true {	
	mp_potential_path(path, run_x, run_y, 3, 1.5, 0);
	path_start(path, 3, path_action_stop, 0);
	state = evading_the_pursuit;	
}  
//Once the evading path is complete start a new path
if path_position == 1 and has_ball == true {
	//Get a random Y coordinate in room
	run_y = random_range(1, room_height)
	//Get a random X coordinate in room
	run_x = random_range(1, room_width)
	mp_potential_path(path, run_x, run_y, 3, 1.5, 0);
	path_start(path, 3, path_action_stop, 0);
}

//Drop ball once timer runs out
if hold_ball_timer == 0 and has_ball == true {
	instance_create_depth(x+25, y, 0, o_ball);
	has_ball = false;
	hold_ball_timer = 10;
}

//Reset timer
if wait_to_get_ball == 0 {
	wait_to_get_ball = 5;
}


///Drop ball when tackled in a 10r circle
if collision_circle(x, y, 10, o_player, false, true) and has_ball == true {
	instance_create_depth(x+10, y, 0, o_ball);
	has_ball = false;
}


