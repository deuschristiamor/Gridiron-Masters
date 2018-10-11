///Init player
has_ball = false;
man = 0;
chosen_block = 0; //1=DL 2=LB 3=CB 4=S
motion = 0;
target = 0;
targeted = 0;
tackled = 0;

//STATES
scr_set_states();

//INIT PATH
path = path_add();

//Steering Behaviours Setup
sb_setup();