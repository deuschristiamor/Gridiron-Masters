//Cover Zone
//Set Zones
var zone = 64; 

var check_zone = instance_nearest(x, y, o_home_parent)
man = check_zone;
dis = point_distance(x, y, man.x, man.y);
dir = point_direction(x, y, man.x, man.y);

//Defend Zone
if dis <= zone { 
	//Target The Closest Player
	man.targeted = true;
	steering = vect_add(steering, sb_seek_arrive(man.x,man.y+15, 32,1));
	motion = 1;
	defending_zone = 1;
}
