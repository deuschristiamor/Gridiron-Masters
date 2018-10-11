//Set blocked player to blocked state and blocking player to blocking true
if collision_circle(x, y, 8, man, 0, 1) {
	man.blocked = true;
	blocking_state = true;
	
} 

//If currently blocking then stay in place
if blocking_state == true {
	steering = vect_add(steering, sb_seek_arrive(x,y, max_speed*max_speed,1));
} 