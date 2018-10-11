/// @description  Step Behaviour Usage

//If your obstacles move, they need this in the Step event too.
position = vect2(x,y);

// reset steering
steering = vect2(0,0);

//## Steering Behaviours go below here ##//__________________________________________________________

// Add like this. (First one doesn't need the vect_add)
//steering = vect_add(steering, sb_#behaviour#(argument,stuff,blah));
//steering = vect_add(steering, sb_seek(mouse_x, mouse_y, 1));
steering = vect_add(steering, sb_seek_arrive(mouse_x,mouse_y, max_speed*max_speed,1));
//steering = vect_add(steering, sb_wander(128,128,90,1));
//steering = vect_add(steering, sb_flee(mouse_x,mouse_y,1));
//steering = vect_add(steering, sb_pursuit(man,1));
//steering = vect_add(steering, sb_evade(obj_master_drone,1));
//steering = vect_add(steering, sb_path_loop(my_path,30,my_path_dir,1));
//steering = vect_add(steering, sb_alignment(obj_drone_path,32,1));
steering = vect_add(steering, sb_separation(par_drone,8,3));
//steering = vect_add(steering, sb_cohesion(object_index,184,2));
//steering = vect_add(steering, sb_avoid_collision(object_index,80,30,1));

//## Steering Behaviours go above here ##//__________________________________________________________


//Limit steering by max_force
steering = vect_truncate(steering, max_force); 

// Limit velocity to max_speed
velocity = vect_truncate(vect_add(velocity, steering),max_speed); 

//Add velocity to position
position = vect_add(position, velocity);

//update xy
x = position[1];
y = position[2];