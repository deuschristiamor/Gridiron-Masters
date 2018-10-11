
if keyboard_check(vk_delete) {

//mp_potential_settings(30, 10, 3, true) --DEFAULTS--
//PURSUING THE CARRIER
//move to player on a grid path if they have the ball

if o_quarterback.has_ball == true {
	mp_potential_path(path, o_quarterback.x, o_quarterback.y-12, spd, 1.5, 0);
	path_start(path, spd, path_action_stop, 0);
	state = pursuing_the_carrier
	motion = 1;
}

///PURSUING THE BALL
// Move to location of ball if it is on the field

if instance_exists(o_ball) and wait_to_get_ball == 0 {
	mp_potential_path(path, o_ball.x, o_ball.y, 3, 1.5, 0);
	path_start(path, 3, path_action_stop, 0);
	wait_to_get_ball = 5
	state = pursuing_the_ball;	
	motion = 1;
}

///EVADING THE PURSUIT
// Move to a location while holding the ball

if has_ball == true {	
	mp_potential_path(path, run_x, run_y, spd, 1.5, 0);
	path_start(path, spd, path_action_stop, 0);
	state = evading_the_pursuit;
	motion = 1
}  
//Once the evading path is complete start a new path
if path_position == 1 and has_ball == true {
	//Get a random Y coordinate in room
	run_y = random_range(1, room_height)
	//Get a random X coordinate in room
	run_x = random_range(1, room_width)
	mp_potential_path(path, run_x, run_y, spd, 1.5, 0);
	path_start(path, spd, path_action_stop, 0);
	motion = 1
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


//SET POSESSION TO TEAM IF HELD
if has_ball == 1 {
	o_Global_Game.posession = o_Global_Game.away_posession;
} 

///Drop ball when tackled in a 10r circle
if collision_circle(x, y, 10, o_home_parent, false, true) and has_ball == true {
	instance_create_depth(x+10, y, 0, o_ball);
	has_ball = false;
}

//STOP IF BLOCKED
if state == pass_blocked {
	path = 0;
}
}



