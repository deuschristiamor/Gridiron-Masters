//Pass Block
dis = point_distance(x, y, man.x, man.y);
dir = point_direction(x, y, man.x, man.y);

//if dis <= block_zone {
	steering = vect_add(steering, sb_seek_arrive(man.x,man.y, max_speed*max_speed,1));
	motion = 1;
/*} else*/ if dis >= block_zone {
	steering = vect_add(steering, sb_seek_arrive(x,y, max_speed*max_speed,1)); 
	motion = 0;
}

//RETURN TO QUARTERBACK IF TOO FAR AWAY
distance_to_qb = point_distance(x, y, o_quarterback.x, o_quarterback.y);

if (distance_to_qb >= o_quarterback.threat_zone) {
	targetX = (o_quarterback.x + (random_range(-o_quarterback.threat_zone/4,o_quarterback.threat_zone/4 )));
	targetY = (o_quarterback.y + (random_range(-o_quarterback.threat_zone/4, -o_quarterback.threat_zone/2)));
	steering = vect_add(steering, sb_seek_arrive((o_quarterback.x + targetX ),(o_quarterback.y + targetY), max_speed*max_speed,1));
	state = return_to_qb_state;
	motion = 1
} else motion = 0

