///Init player
block_zone = 16
man = 0;
chosen_block = 0; //1=DL 2=LB 3=CB 4=S
motion = 0;
target = 0;
has_ball = true;
threat_zone = 64;
tackled = false;

//Who Starts With Ball?
if has_ball == true {
	o_Global_Game.who_has_ball = self;
}

//CONTROLLED PLAYER NUMBER
controlled_player_number = 1;

///STEERING BEHAVIOUR SETUP______________________________________________________________________

//Create User Movement Node
node = o_sb_node_quarterback;
if global.controlled_player == controlled_player_number {
	instance_create_depth(x, y, 0, o_sb_node_quarterback)	
}


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
max_speed = 2.5;
max_force = .6; // How fast it turns

// Only needed if the object will follow paths
my_path = path_loop;
my_path_point = irandom(path_get_number(my_path)-1); // Choose a random point on the path
my_path_dir = 1; // 1 = forwards, -1 = backwards
///STEERING BEHAVIOUR SETUP END_______________________________________________________________________

