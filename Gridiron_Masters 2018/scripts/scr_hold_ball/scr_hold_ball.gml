/// @description hold
if instance_exists(o_ball) {
	if has_ball == false and o_away_parent.has_ball == false {
		if (o_ball.catchable == true) {
		has_ball = true;
		o_Global_Game.who_has_ball = self;
		instance_destroy(o_ball);
		}
	}
}
