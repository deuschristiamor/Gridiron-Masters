///Drop ball when tackled in a 10r circle
if collision_circle(x, y, 10, o_away_parent, false, true) and has_ball == true {
	instance_create_depth(x+10, y, 0, o_ball);
	has_ball = false;
}
