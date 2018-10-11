///PICK WHO TO BLOCK
//1=DL 2=LB 3=CB 4=S
//Who Is The Closest Lineman?
var check_DL = instance_nearest(x, y, o_defensive_line_parent)
if check_DL.targeted == false {
	//Target The Closest Defensive Lineman
	man = check_DL;
	man.targeted = true;
	chosen_block = 1;
} 

//Who Is The Closest Linebacker?
if chosen_block == 0 {
var check_LB = instance_nearest(x, y, o_linebacker_parent)
if check_LB.targeted == false {
	//Target The Closest Linebacker
	man = check_LB;	
	man.targeted = true;
	chosen_block = 2;
}
}

//Who Is The Closest Safety?
//var check_S = instance_nearest(x, y, o_safety_parent)
//if check_S.targeted == false {
	//Target The Closest Safety
//	man = check_S;	
//	man.targeted = true;
//	chosen_block = true;
//}

//Who Is The Closest Cornerback?
//var check_CB = instance_nearest(x, y, o_cornerback_parent)
//if check_CB.targeted == false {
	//Target The Closest Safety
//	man = check_CB;	
//	man.targeted = true;
//	chosen_block = true;
//}



