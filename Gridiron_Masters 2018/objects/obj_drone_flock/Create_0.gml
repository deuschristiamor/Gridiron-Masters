/// @description  Setup Steering Behaviour Support


//Non-Steering behaviour stuff
my_color = c_gray;

image_xscale = 3;
image_yscale = image_xscale;


//Steering behaviour stuff
position = vect2(x,y); // will be used to update xy
velocity = vect2(0,0);
steering = vect2(0,0); // desired velocity

max_speed = 4;
max_force = 0.7; // How fast it turns

// Only needed if the object will follow paths
my_path = path_loop;
my_path_point = irandom(path_get_number(my_path)-1); // Choose a random point on the path
my_path_dir = 1; // 1 = forwards, -1 = backwards

