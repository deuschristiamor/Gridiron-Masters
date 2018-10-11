//Tackle
var tackle = collision_circle(x, y, 12, target, false, true);
if tackle and target.has_ball == true {
	target.tackled = true;
} else if !tackle {
	//target.tackled = false;
}