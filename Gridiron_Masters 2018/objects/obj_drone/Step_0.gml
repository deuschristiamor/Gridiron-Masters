/// @description  Step Behaviour Usage

// reset steering
steering = vect2(0,0);


//## Steering Behaviours go below here ##//

// Add like this. (First one doesn't need the vect_add)
//steering = vect_add(steering, sb_#behaviour#(argument,stuff,blah));

steering = vect_add(steering, sb_seek(mouse_x, mouse_y, 1));
//steering = vect_add(steering, sb_seek_arrive(mouse_x,mouse_y,256,1));
steering = vect_add(steering, sb_wander(128,128,90,1));
//steering = vect_add(steering, sb_flee(mouse_x,mouse_y,1));
//steering = vect_add(steering, sb_pursuit(obj_master_drone,1));
//steering = vect_add(steering, sb_evade(obj_master_drone,1));
//steering = vect_add(steering, sb_path_loop(my_path,30,my_path_dir,1));
steering = vect_add(steering, sb_alignment(object_index,128,1));
steering = vect_add(steering, sb_separation(object_index,64,3));
steering = vect_add(steering, sb_cohesion(object_index,184,2));
steering = vect_add(steering, sb_avoid_collision(obj_obstacle,80,30,1));

//## Steering Behaviours go above here ##//


//Limit steering by max_force
steering = vect_truncate(steering, max_force); 

// Limit velocity to max_speed
velocity = vect_truncate(vect_add(velocity, steering),max_speed); 

//Add velocity to position
position = vect_add(position, velocity);

//update xy
x = position[1];
y = position[2];

image_angle = vect_direction(velocity);

///Screen Wrap

if position[1] > room_width position[1] = 0;
if position[2] > room_height position[2] = 0;
if position[1] < 0 position[1] = room_width;
if position[2] < 0 position[2] = room_height;

