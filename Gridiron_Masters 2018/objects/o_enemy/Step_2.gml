/// @description hold ball timer
if has_ball == true {
	hold_ball_timer -= 1/room_speed;
}
if has_ball == false { 
	wait_to_get_ball -=1/room_speed;
}