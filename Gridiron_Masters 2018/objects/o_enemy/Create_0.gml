//// Init
has_ball = false;
hold_ball_timer = 10
wait_to_get_ball = 5	
spd = 4
targeted = false;

//path
path = path_add();

//state machine
state = 0;
pursuing_the_carrier = 1;
pursuing_the_ball = 2;
evading_the_pursuit = 3;
pass_blocked = 4;


//SET MOTION STATE TO FALSE
scr_set_motion_state_ai();


