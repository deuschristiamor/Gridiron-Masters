//scr_pass_block
//When the player is not on an AI path motion is set to 0.

//GET DISTANCE TO DEFENDER
distance_to_defender = point_distance(x, y, obj_seek_qb.x, obj_seek_qb.y)

//GO TO DEFENDER IF INSIDE BLOCK ZONE
if instance_exists(obj_seek_qb) and (distance_to_defender < block_zone) {
	//state = pass_block_state;
	steering = vect_add(steering, sb_seek_arrive(obj_seek_qb.x,obj_seek_qb.y, 32,1));
	motion = 1;	
} else motion = 0

//RETURN TO QUARTERBACK IF TOO FAR AWAY
distance_to_qb = point_distance(x, y, o_quarterback.x, o_quarterback.y);

if (distance_to_qb > o_quarterback.threat_zone) {
	//steering = vect_add(steering, sb_seek_arrive((o_quarterback.x + random_range(-o_quarterback.threat_zone/4, o_quarterback.threat_zone/4)),(o_quarterback.y+random_range(-o_quarterback.threat_zone/4, o_quarterback.threat_zone/4)), 32,1));
	steering = vect_add(steering, sb_seek_arrive((o_quarterback.x + random_range(-o_quarterback.threat_zone/4, o_quarterback.threat_zone/4)),(o_quarterback.y+random_range(-o_quarterback.threat_zone/4, o_quarterback.threat_zone/4)), 32,1));
	//state = return_to_qb_state;
	motion = 1
} else motion = 0