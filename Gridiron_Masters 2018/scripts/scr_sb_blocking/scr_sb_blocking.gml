//Set blocked player to blocked state and blocking player to blocking true
blocking_state = false;
//If currently blocking then stay in place
if blocking_state == true {
	steering = vect_add(steering, sb_seek_arrive(x,y, max_speed*max_speed,1));
} 

//Decide Who Wins Block Battle
if collision_circle(x, y, 8, man, 0, 1) {
	inst = instance_place(x, y, man)
	dice = random_range(1, 100)
	var win_check = false;
	if dice <= blocking {
		win_check = true
	}
	if win_check == true {
	blocking_state = true;
	man.blocked = true;	
	}	
} else man.blocked = false
