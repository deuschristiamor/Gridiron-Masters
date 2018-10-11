/// @description Insert description here
//DRAW FORMATION BUTTONS
if (global.game_state == global.pick_play_state) {
	//draw_sprite(s_packages, 0, 36, 46);
	draw_text(14, 56, "Choose Package Offense: 1 = Gun 2 = Gun Split 3 = I Formation 4 = I Formation Spread")
	draw_text(14, 76, "Choose Package Defense: 5 = 4-3")	
}
//DRAW GAME STATE
if global.game_state != global.play_state {
	draw_text(14, 96, "Game State: " + string(global.game_state));
	//DRAW FORMATION PICKS
	draw_text(14, 116, "Offense: " + string(formation_offense));
	draw_text(14, 136, "Defense: " + string(formation_defense));
}
//DRAW POSSESSION
if posession == home_posession {
	draw_text(28, 204, "Ball Possession: Home Team")
}
if posession == away_posession {
	draw_text(28, 204, "Ball Possession: Away Team")
}
if posession == 0 {
	draw_text(28, 204, "Ball Possession:  None")
}

//DRAW DOWNS____________________________
if instance_exists(o_LOS) {
	var Xtickers = 790;
	if downs == 4 {
		draw_text_transformed(Xtickers, 96, "1st Down & " + string((o_LOS.y - o_FD.y)/21) + " Yards", 2, 2, image_angle);
	}
	if downs == 3 {
		draw_text_transformed(Xtickers, 96, "2nd Down & " + + string((o_LOS.y - o_FD.y)/21) + " Yards", 2, 2, image_angle);
	}
	if downs == 2 {
		draw_text_transformed(Xtickers, 96, "3rd Down & " + string((o_LOS.y - o_FD.y)/21) + " Yards", 2, 2, image_angle);
	}
	if downs == 1 {
		draw_text_transformed(Xtickers, 96, "4th Down & " + string((o_LOS.y - o_FD.y)/21) + " Yards", 2, 2, image_angle);
	}
	if downs < 1 {
		draw_text_transformed(Xtickers, 96, "Turnover", 2, 2, image_angle);
	}
}
//______________________________________

//DRAW PLAYER COUNTS
if global.game_state == global.play_state {
	draw_text(14, 246, "Quarterbacks: " + string(quarterback_count));
	//DRAW FORMATION PICKS
	draw_text(14, 266, "Runningbacks: " + string(running_back_count));
	draw_text(160, 266, "Fullbacks: " + string(full_back_count));
	draw_text(14, 286, "Widereceivers: " + string(wide_receiver_count));
	draw_text(14, 306, "O Linemen: " + string(Olinemen_count));
	draw_text(14, 326, "Tightends: " + string(tight_end_count));
	draw_text(14, 366, "D Linemen: " + string(Dlinemen_count));
	draw_text(14, 386, "Linebackers: " + string(linebacker_count));
	draw_text(14, 406, "Cornerbacks: " + string(cornerback_count));
	draw_text(14, 426, "Safeties: " + string(safety_count));
	//DRAW ALL PLAYER POSITIONS
	//OFFENSE
	if instance_exists(o_quarterback) {
	draw_text(14, 466, "Quarterback: " + "[X:" + string(qbx) + "]" + "[Y:" + string(qby) + "]");
	}
	if instance_exists(o_half_back) {
	draw_text(14, 486, "Half Back: " + "[X:" + string(hbx) + "]" + "[Y:" + string(hby) + "]");
	}
	if instance_exists(o_half_back2) {
	draw_text(14, 506, "Half Back 2: " + "[X:" + string(hb2x) + "]" + "[Y:" + string(hb2y) + "]");
	}
	if instance_exists(o_full_back) {
	draw_text(14, 526, "Full Back: " + "[X:" + string(fbx) + "]" + "[Y:" + string(fby) + "]");
	}
	if instance_exists(o_center) {
	draw_text(14, 546, "Center: " + "[X:" + string(cx) + "]" + "[Y:" + string(cy) + "]");
	}
	if instance_exists(o_left_tackle) {
	draw_text(14, 566, "Left Tackle: " + "[X:" + string(ltx) + "]" + "[Y:" + string(lty) + "]");
	}
	if instance_exists(o_left_guard) {
	draw_text(14, 586, "Left Guard: " + "[X:" + string(lgx) + "]" + "[Y:" + string(lgy) + "]");
	}
	if instance_exists(o_right_guard) {	
	draw_text(14, 606, "Right Guard: " + "[X:" + string(rgx) + "]" + "[Y:" + string(rgy) + "]");
	}
	if instance_exists(o_right_tackle) {
	draw_text(14, 626, "Right Tackle: " + "[X:" + string(rtx) + "]" + "[Y:" + string(rty) + "]");
	}
	if instance_exists(o_tight_end) {
	draw_text(14, 646, "Tight End: " + "[X:" + string(tex) + "]" + "[Y:" + string(tey) + "]");
	}
	if instance_exists(o_tight_end2) {
	draw_text(14, 666, "Tight End 2: " + "[X:" + string(te2x) + "]" + "[Y:" + string(te2y) + "]");
	}
	if instance_exists(o_wide_reciever) {
	draw_text(14, 686, "Wide Receiver: " + "[X:" + string(wrx) + "]" + "[Y:" + string(wry) + "]");
	}
	if instance_exists(o_wide_reciever2) {
	draw_text(14, 706, "Wide Receiver2: " + "[X:" + string(wr2x) + "]" + "[Y:" + string(wr2y) + "]");
	}
	if instance_exists(o_wide_reciever3) {
	draw_text(14, 726, "Wide Receiver3: " + "[X:" + string(wr3x) + "]" + "[Y:" + string(wr3y) + "]");
	}
	if instance_exists(o_wide_reciever4) {
	draw_text(14, 746, "Wide Receiver4: " + "[X:" + string(wr4x) + "]" + "[Y:" + string(wr4y) + "]");
	}
	if instance_exists(o_wide_reciever5) {
	draw_text(14, 766, "Wide Receiver5: " + "[X:" + string(wr5x) + "]" + "[Y:" + string(wr5y) + "]");
	}
	
	//DEFENSE
	if instance_exists(o_defensive_end) {
	draw_text(1500, 466, "Defensive End: " + "[X:" + string(dex) + "]" + "[Y:" + string(dey) + "]");
	}
	if instance_exists(o_defensive_end2) {
	draw_text(1500, 486, "Defensive End 2: " + "[X:" + string(de2x) + "]" + "[Y:" + string(de2y) + "]");
	}
	if instance_exists(o_defensive_tackle) {
	draw_text(1500, 506, "Defensive Tackle: " + "[X:" + string(dtx) + "]" + "[Y:" + string(dty) + "]");
	}
	if instance_exists(o_defensive_tackle2) {
	draw_text(1500, 526, "Defensive Tackle 2: " + "[X:" + string(dt2x) + "]" + "[Y:" + string(dt2y) + "]");
	}
	if instance_exists(o_middle_linebacker) {
	draw_text(1500, 546, "Middle Linebacker: " + "[X:" + string(mlbx) + "]" + "[Y:" + string(mlby) + "]");
	}
	if instance_exists(o_outer_linebacker) {
	draw_text(1500, 566, "Outer Linebacker: " + "[X:" + string(olbx) + "]" + "[Y:" + string(olby) + "]");
	}
	if instance_exists(o_outer_linebacker2) {
	draw_text(1500, 586, "Outer Linebacker 2: " + "[X:" + string(olb2x) + "]" + "[Y:" + string(olb2y) + "]");
	}
	if instance_exists(o_cornerback) {	
	draw_text(1500, 606, "Cornerback: " + "[X:" + string(cbx) + "]" + "[Y:" + string(cby) + "]");
	}
	if instance_exists(o_cornerback2) {
	draw_text(1500, 626, "Cornerback 2: " + "[X:" + string(cb2x) + "]" + "[Y:" + string(cb2y) + "]");
	}
	if instance_exists(o_free_safety) {
	draw_text(1500, 646, "Free Safety: " + "[X:" + string(fsx) + "]" + "[Y:" + string(fsy) + "]");
	}
	if instance_exists(o_strong_safety) {
	draw_text(1500, 666, "Strong Safety: " + "[X:" + string(ssx) + "]" + "[Y:" + string(ssy) + "]");
	}
	draw_text(1500, 686, "Who Has Ball?: " + string(who_has_ball)); 	
	draw_text(1500, 706, "Ball X: " + string(ball_x));
	draw_text(1500, 726, "Ball Y: " + string(ball_y));

}
