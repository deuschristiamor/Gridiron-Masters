///Init player
has_ball = 0;
block_zone = 16
man = 0;
chosen_block = 0; //1=DL 2=LB 3=CB 4=S
motion = 0;
target = 0;
tackled = 0;

//Blocking Stats_______________
blocking = 60
blocking_state = false;
block_zone = 32;
current_target = 0;
dice = 0;
inst = 0;
//Blocking Stats End___________

//STATES
scr_set_states();

//INIT PATH
path = path_add();

//Steering Behaviours Setup
sb_setup();

