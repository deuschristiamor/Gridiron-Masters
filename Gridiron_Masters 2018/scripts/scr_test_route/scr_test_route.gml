//TEST RANDOM ROUTE
route = choose(p_fade, p_inside_corner, p_inside_post, p_slant);

//Start route if play begins
if global.game_state == global.play_state and keyboard_check_pressed(ord("S")){
	//steering = vect_add(steering, sb_path_loop(route,30,my_path_dir,1));
	path_start(route, max_speed, path_action_stop, 0);
	motion = 1;
} 

//When route is done get open
if path_position == 1 {
	path_start(p_inside_corner_get_open, max_speed, path_action_reverse, 0)
}