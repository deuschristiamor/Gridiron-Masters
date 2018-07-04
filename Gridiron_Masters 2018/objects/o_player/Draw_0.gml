///draw self
draw_self();

//draw ball
if has_ball == true and o_enemy.has_ball == false{
	draw_sprite(s_ball, 0, x+5, y);
}

//draw text when hit in a 10r circle
if collision_circle(x, y, 10, o_enemy, false, true) {
	draw_text(x, y+20, "hit")
}

