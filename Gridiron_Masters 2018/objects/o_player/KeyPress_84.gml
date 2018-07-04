/// @description create ball 
//if we have the ball then we can create it or "drop" it on the field
if has_ball == true and o_enemy.has_ball == false {
	instance_create_depth(x+10, y, 0, o_ball);
	has_ball = false;
}