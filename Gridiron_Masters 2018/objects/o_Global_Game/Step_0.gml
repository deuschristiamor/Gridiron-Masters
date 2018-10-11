/// 



//CHANGE PLAYER
if (o_input.switch_key) {
	global.controlled_player += 1;
}

//CONTROL THE PLAYER LOOP
if (o_input.switch_key) {
    if global.controlled_player > instance_number(o_home_parent){
        global.controlled_player = 1;
    }
}

//GAME STATES
//Start with no state then set it to pick play state
if global.game_state == 0 and keyboard_check_pressed(vk_space) {
	global.game_state = global.pick_play_state
	show_message("Pick Play State")
}

//TRACK BALL POSESSION IF NO ONE HAS IT
if instance_exists(o_ball) {
	posession = 0;
}

//IF NO ONE HAS THE BALL SET WHO HAS IT TO BALL LOCATION--DEBUGGING PURPOSES--
if posession == 0 {
	who_has_ball = o_quarterback;
}

//CONTROL BALL STATES
if instance_exists(o_ball) and o_ball.speed == 0 {
	ball_state = on_ground;
}
if instance_exists(o_ball) and o_ball.speed > 0 {
	ball_state = in_air;
}
if !instance_exists(o_ball) {
	ball_state = held;
}

//CONTROL BALL SPOT TRACKING AND SET XY TO BALL OR TO BALL CARRIER
if global.game_state == global.play_state and instance_exists(o_player_parent){
	if instance_exists(o_ball) {
		ball_x = o_ball.x;
		ball_y = o_ball.y;
		ball_spotX = o_ball.x;
		ball_spotY = o_ball.y;
		x = ball_spotX;
		y = ball_spotY;
	} else if !instance_exists(o_ball) {
		ball_x = who_has_ball.x;
		ball_y = who_has_ball.y;
		ball_spotX = who_has_ball.x;
		ball_spotY = who_has_ball.y;
		//Clamp XY To Inside The Hash Marks
		if ball_spotX <= 528 {
			ball_spotX = 528
		}
		if ball_spotX >= 800 {
			ball_spotX = 800
		}
		if ball_spotY <= 208 {
			ball_spotY = 208
		}
		if ball_spotY >= 2308 {
			ball_spotY = 2308
		}
		x = ball_spotX;
		y = ball_spotY;
	}
		//clamp(ball_spotX, 528, 800);
		//clamp(ball_spotY, 208, 2308);
}

//SET LINE OF SCRIMMAGE WHEN CENTER EXISTS
if instance_exists(o_center) {
	instance_create_depth(107, y, 10, o_LOS)
	//Create the first down marker
	instance_create_depth(107, y-210, 10, o_FD)
} else instance_destroy(o_LOS);

//RESTART GAME ON 4th DOWN OR RESET DOWNS IF FIRST DOWN MARKER IS REACHED WITHIN 4 DOWNS
if downs < 1 {
	room_restart();
}
if global.game_state == global.pre_snap_state {
	if first_down == true and downs >=1 {
		first_down = false;
		downs = 4;
		instance_destroy(o_FD);
		instance_create_depth(107, y-210, 10, o_FD);
	}
}
//_________________________________________________________________________________________

//SET FORMATION FOR OFFENSE
scr_set_package();

//SET FORMATION FOR DEFENSE
scr_set_package_defense();

//SET TO PLAY STATE WHEN BOTH TEAMS ARE READY
if global.play_offense_ready == true and global.play_defense_ready == true and keyboard_check_pressed(vk_space) and spawned = 0 {	
	global.game_state = global.spawn_state;	
	spawned = 1;
} else if global.game_state == global.spawn_state {
	global.game_state = global.pre_snap_state;
	} else if global.game_state == global.pre_snap_state and keyboard_check_pressed(ord("S")) {
		global.game_state = global.play_state;
	}
	
//READ FIELD
scr_read_field();