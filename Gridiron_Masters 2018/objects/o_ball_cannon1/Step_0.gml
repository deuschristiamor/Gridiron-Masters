/// @description Stay on QB
x = testQB.x
y = testQB.y

//SET TARGET TO MOUSE
target = o_target;

//THROW BALL

scr_throw_ball3();


//ENSURE ONLY ONE IS CREATED
if instance_number(o_ball_cannon1) > 1 {
	instance_destroy();
}

