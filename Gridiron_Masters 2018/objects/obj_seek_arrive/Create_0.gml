/// @description  Setup Steering Behaviour Support


//Create User Movement Node
instance_create_depth(x, y, 0, o_sb_input_control)



//Obstacle Setup

//This is all that is needed to be referenced
//by the obstacle avoidance behaviour.
//If your obstacles move, they need this in the Step event too.
position = vect2(x,y);

//Place behind everything else
depth = 10;

//Non-Steering behaviour stuff
my_color = c_red;

//Steering behaviour stuff
position = vect2(x,y); // will be used to update xy
velocity = vect2(0,0);
steering = vect2(0,0); // desired velocity

max_spd = choose(1, 2, 2.5, 3, 3.5);
max_speed = 5
max_force = .6; // How fast it turns

// Only needed if the object will follow paths
my_path = path_loop;
my_path_point = irandom(path_get_number(my_path)-1); // Choose a random point on the path
my_path_dir = 1; // 1 = forwards, -1 = backwards



