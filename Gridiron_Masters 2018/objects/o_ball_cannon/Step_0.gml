/// @description Stay on QB
x = o_quarterback.x
y = o_quarterback.y

//SET TARGET TO MOUSE
target = o_target;

//THROW BALL
if global.game_state == global.play_state and o_LOS.visible == true {
//scr_throw_ball();
scr_throw_ball2();
}

//ENSURE ONLY ONE IS CREATED
if instance_number(o_ball_cannon) > 1 {
	instance_destroy();
}

