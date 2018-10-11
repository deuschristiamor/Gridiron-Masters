//Cover Man if LOS has not been crossed by ball carrier_________________
if o_LOS.visible == true {
	
	//Get distance and direction_______________
	dis = point_distance(x, y, man.x, man.y);
	dir = point_direction(x, y, man.x, man.y);
	//__________________________________________

	//Steer towards man y+15_____________________________________________
	steering = vect_add(steering, sb_seek_arrive(man.x,man.y+15, 32,1));
	motion = 1;
	
	//Tackle
	scr_tackle();
	//___________________________________________________________________
}
//_______________________________________________________________________

//If not blocked and the ball is on the field(or in air) steer to the ball else steer to ball carrier
if blocked == false and instance_exists(o_ball) {
	target = o_ball;
	steering = vect_add(steering, sb_seek_arrive(target.x,target.y, max_speed*max_speed,1));
	motion = 1;
	
	
} else if blocked == false and !instance_exists(o_ball) and o_LOS.visible == false {
	target = o_Global_Game.who_has_ball;
	steering = vect_add(steering, sb_seek_arrive(target.x,target.y, max_speed*max_speed,1));
	motion = 1;	
	
	//Tackle
	scr_tackle();
}
//_____________________________________________________________________________________________________