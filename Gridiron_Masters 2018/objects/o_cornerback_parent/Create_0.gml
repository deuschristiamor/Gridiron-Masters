//// Init
has_ball = false;	
targeted = false;
target = 0;
motion = 0;
man = 0;
defending_zone = 0;
chosen_man = 0;

//My Color
image_blend = c_red;

//path
path = path_add();

//state machine
state = 0;
pursuing_the_carrier = 1;
pursuing_the_ball = 2;
evading_the_pursuit = 3;
pass_blocked = 4;

//Shed Stats_______________
blocked = false;
blocked_timer = 1
block_shed = 88;
image_blend = c_red;
current_target = 0;
dice = 0;
//Shed Stats End___________

///STEERING BEHAVIOUR SETUP______________________________________________________________________

//Create User Movement Node
//node = o_sb_node_quarterback;
//if global.controlled_player == controlled_player_number {
//	instance_create_depth(x, y, 0, o_sb_node_quarterback)	
//}

//Obstacle Setup

//This is all that is needed to be referenced
//by the obstacle avoidance behaviour.
//If your obstacles move, they need this in the Step event too.
position = vect2(x,y);

//Place behind everything else
depth = 10;

//Steering behaviour stuff
position = vect2(x,y); // will be used to update xy
velocity = vect2(0,0);
steering = vect2(0,0); // desired velocity

//Set speed
max_spd = choose(1, 2, 2.5, 3, 3.5);
max_speed = max_spd
max_force = .6; // How fast it turns

// Only needed if the object will follow paths
my_path = path_loop;
my_path_point = irandom(path_get_number(my_path)-1); // Choose a random point on the path
my_path_dir = 1; // 1 = forwards, -1 = backwards
///STEERING BEHAVIOUR SETUP END_______________________________________________________________________




