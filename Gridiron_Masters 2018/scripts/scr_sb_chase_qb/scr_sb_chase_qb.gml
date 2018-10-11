//If not blocked chase QB__________________________________________________________________________
if blocked == false and o_ball_cannon.thrown == false {
	target = o_quarterback;
	steering = vect_add(steering, sb_seek_arrive(target.x,target.y, max_speed*max_speed,1));
	motion = 1;
	
	//Tackle
	scr_tackle();

}
//__________________________________________________________________________________________________

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
//___________________________________________________________________________________________________

/*
if !instance_exists(o_ball) {
	target = o_Global_Game.who_has_ball;
}
//If not blocked and the ball carrier has crossed the LOS steer to the ball carrier__________________
if blocked = false and o_LOS.visible == false {
	target = o_Global_Game.who_has_ball;
	steering = vect_add(steering, sb_seek_arrive(target.x,target.y, max_speed*max_speed,1));
	motion = 1;
	
	//Tackle
	scr_tackle();
	
}*/
//___________________________________________________________________________________________________
