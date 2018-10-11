///PICK WHO TO COVER
//1=WR 2=TE 3=RB 4=0
//Who Is The Closest Wide Receiver?
var check_WR = instance_nearest(x, y, o_wide_receiver_parent)
if check_WR.targeted == false {
	//Target The Closest WR
	man = check_WR;
	man.targeted = true;
	chosen_man = 1;
} 

//Who Is The Closest Tight End?
if chosen_man == 0 and instance_exists(o_tight_end_parent) {
var check_TE = instance_nearest(x, y, o_tight_end_parent)
if check_TE.targeted == false {
	//Target The Closest TE
	man = check_TE;	
	man.targeted = true;
	chosen_man = 2;
}
}
/*
//Who Is The Closest RB?
if chosen_man == 0 and instance_exists(o_running_back_parent) {
var check_RB = instance_nearest(x, y, o_running_back_parent)
if check_RB.targeted == false {
	//Target The Closest RB
	man = check_RB;	
	man.targeted = true;
	chosen_man = true;
}
}
*/
//Who Is The Closest Cornerback?
//var check_CB = instance_nearest(x, y, o_cornerback_parent)
//if check_CB.targeted == false {
	//Target The Closest Safety
//	man = check_CB;	
//	man.targeted = true;
//	chosen_block = true;
//}

//If The Ball Carrier Has Crossed the LOS go for the ball carrier
if global.game_state == global.play_state and instance_exists(o_LOS) {
	if o_LOS.visible == false {
		man = o_Global_Game.who_has_ball;
		man.targeted = true;
	}
}


