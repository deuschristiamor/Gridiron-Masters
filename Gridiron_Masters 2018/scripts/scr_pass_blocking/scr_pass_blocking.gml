//scr_pass_block
//When the player is not on an AI path motion is set to 0.

//GET DISTANCE TO DEFENDER
distance_to_defender = point_distance(x, y, man.x, man.y)

//GO TO DEFENDER IF INSIDE BLOCK ZONE
if (distance_to_defender < block_zone) {
	state = pass_block_state;
	mp_potential_path(path, man.x, man.y, spd, 1.5, 0);
	path_start(path, spd, path_action_stop, 0);
	motion = 1;	
} else motion = 0

//RETURN TO QUARTERBACK IF TOO FAR AWAY
distance_to_qb = point_distance(x, y, o_quarterback.x, o_quarterback.y);

if (distance_to_qb > o_quarterback.threat_zone) {
	mp_potential_path(path, o_quarterback.x + random_range(-o_quarterback.threat_zone/4,o_quarterback.threat_zone/4 ) , o_quarterback.y + random_range(-o_quarterback.threat_zone/4, -o_quarterback.threat_zone/2), spd, 1.5, 0);
	path_start(path, spd, path_action_stop, 0);
	state = return_to_qb_state;
	motion = 1
} else motion = 0