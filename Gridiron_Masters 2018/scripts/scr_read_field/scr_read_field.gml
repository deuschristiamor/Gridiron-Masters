//READ WHICH PLAYERS ARE WHERE

//DEFENSE________________________________________________________
//HOW MANY LINEMEN?
Dlinemen_count = instance_number(o_defensive_line_parent)

//HOW MANY LINEBACKERS?
linebacker_count = instance_number(o_linebacker_parent)

//HOW MANY CORNERBACKS?
cornerback_count = instance_number(o_cornerback_parent)

//HOW MANY SAFETIES?
safety_count = instance_number(o_safety_parent)

//OFFENSE__________________________________________________________
//HOW MANY QUARTERBACKS?
quarterback_count = instance_number(o_quarterback_parent)

//HOW MANY LINEMEN?
Olinemen_count = instance_number(o_offensive_line_parent)

//HOW MANY RUNNING BACKS?
running_back_count = instance_number(o_running_back_parent)

//HOW MANY FULL BACKS?
full_back_count = instance_number(o_full_back_parent)

//HOW MANY WIDE RECEIVERS?
wide_receiver_count = instance_number(o_wide_receiver_parent)

//HOW MANY TIGHT ENDS
tight_end_count = instance_number(o_tight_end_parent)

//WHERE ARE THE PLAYERS?
//OFFENSE____________________________________________
//Quarterback
if instance_exists(o_quarterback) {
	qbx = o_quarterback.x
	qby = o_quarterback.y
} else qbx = 0 and qby = 0
//Halfback
if instance_exists(o_half_back) {
	hbx = o_half_back.x
	hby = o_half_back.y
} else hbx = 0 and hby = 0
//Halfback 2
if instance_exists(o_half_back2) {
	hb2x = o_half_back2.x
	hb2y = o_half_back2.y
} else hb2x = 0 and hb2y = 0
//Fullback
if instance_exists(o_full_back) {
	fbx = o_full_back.x
	fby = o_full_back.y
} else fbx = 0 and fby = 0
//Center
if instance_exists(o_center) {
	cx = o_center.x
	cy = o_center.y
} else cx = 0 and cy = 0
//Left Tackle
if instance_exists(o_left_tackle) {
	ltx = o_left_tackle.x
	lty = o_left_tackle.y
} else ltx = 0 and lty = 0
//Left Guard
if instance_exists(o_left_guard) {
	lgx = o_left_guard.x
	lgy = o_left_guard.y
} else lgx = 0 and lgy = 0
//Right Guard
if instance_exists(o_right_guard) {
	rgx = o_right_guard.x
	rgy = o_right_guard.y
} else rgx = 0 and rgy = 0
//Right Tackle
if instance_exists(o_right_tackle) {
	rtx = o_right_tackle.x
	rty = o_right_tackle.y
} else rtx = 0 and rty = 0
//Tight End
if instance_exists(o_tight_end) {
	tex = o_tight_end.x
	tey = o_tight_end.y
} else tex = 0 and tey = 0
//Tight End 2 
if instance_exists(o_tight_end2) {
	te2x = o_tight_end2.x
	te2y = o_tight_end2.y
} else te2x = 0 and te2y = 0
//Wide Receiver
if instance_exists(o_wide_reciever) {
	wrx = o_wide_reciever.x
	wry = o_wide_reciever.y
} else wrx = 0 and wry = 0
//Wide Receiver 2
if instance_exists(o_wide_reciever2) {
	wr2x = o_wide_reciever2.x
	wr2y = o_wide_reciever2.y
} else wr2x = 0 and wr2y = 0
//Wide Receiver 3
if instance_exists(o_wide_reciever3) {
	wr3x = o_wide_reciever3.x
	wr3y = o_wide_reciever3.y
} else wr3x = 0 and wr3y = 0
//Wide Receiver 4
if instance_exists(o_wide_reciever4) {
	wr4x = o_wide_reciever4.x
	wr4y = o_wide_reciever4.y
} else wr4x = 0 and wr4y = 0
//Wide Receiver 5
if instance_exists(o_wide_reciever5) {
	wr5x = o_wide_reciever5.x
	wr5y = o_wide_reciever5.y
} else wr5x = 0 and wr5y = 0

//DEFENSE____________________________________________
//Defensive Tackle
if instance_exists(o_defensive_tackle) {
	dtx = o_defensive_tackle.x
	dty = o_defensive_tackle.y
} else dtx = 0 and dty = 0
//Defensive Tackle 2
if instance_exists(o_defensive_tackle2) {
	dt2x = o_defensive_tackle2.x
	dt2y = o_defensive_tackle2.y
} else dt2x = 0 and dt2y = 0
//Defensive End
if instance_exists(o_defensive_end) {
	dex = o_defensive_end.x
	dey = o_defensive_end.y
} else dex = 0 and dey = 0
//Defensive End 2
if instance_exists(o_defensive_end2) {
	de2x = o_defensive_end2.x
	de2y = o_defensive_end2.y
} else de2x = 0 and de2y = 0
//Middle Linebacker
if instance_exists(o_middle_linebacker) {
	mlbx = o_middle_linebacker.x
	mlby = o_middle_linebacker.y
} else mlbx = 0 and mlby = 0
//Outer Linebacker
if instance_exists(o_outer_linebacker) {
	olbx = o_outer_linebacker.x
	olby = o_outer_linebacker.y
} else olbx = 0 and olby = 0
//Outer Linebacker 2
if instance_exists(o_outer_linebacker2) {
	olb2x = o_outer_linebacker2.x
	olb2y = o_outer_linebacker2.y
} else olb2x = 0 and olb2y = 0
//Cornerback 
if instance_exists(o_cornerback) {
	cbx = o_cornerback.x
	cby = o_cornerback.y
} else cbx = 0 and cby = 0
//Cornerback 2
if instance_exists(o_cornerback2) {
	cb2x = o_cornerback2.x
	cb2y = o_cornerback2.y
} else cb2x = 0 and cb2y = 0
//Free Safety
if instance_exists(o_free_safety) {
	fsx = o_free_safety.x
	fsy = o_free_safety.y
} else fsx = 0 and fsy = 0
//Strong Safety
if instance_exists(o_strong_safety) {
	ssx = o_strong_safety.x
	ssy = o_strong_safety.y
} else ssx = 0 and ssy = 0

