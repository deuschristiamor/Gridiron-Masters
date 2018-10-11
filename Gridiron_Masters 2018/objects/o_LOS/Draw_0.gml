/// @description Insert description here
// You can write your code in this editor
draw_self();

//Check for ball carrier crossing then vanish
if place_meeting(x, y, o_Global_Game.who_has_ball) {
	visible = false;
}

//Check if ball crosses LOS then vanish
if instance_exists(o_ball) and o_ball_cannon.thrown == true {
	if place_meeting(x, y, o_ball) {
		visible = false;
	}
}