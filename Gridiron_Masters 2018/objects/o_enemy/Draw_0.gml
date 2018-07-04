/// @description Draw self and path
draw_self();

//draw state
if state <= 0 {
	draw_text(x, y-10, string(state) )
}
//draw pursuit path
if state == pursuing_the_carrier {
	draw_path(path, x, y, false);
}

//draw ball pursuit path
if state == pursuing_the_ball {
	draw_path(path, x, y, false);
}

//draw text when hit in a 10r circle
if collision_circle(x, y, 10, o_player, false, true) {
	draw_text(x, y-20, "hit")
}

//draw ball if possesed
if has_ball == true and o_player.has_ball == false {
	draw_sprite(s_ball, 0, x+5, y)
}

//Draw path for when running away with the ball
if state == evading_the_pursuit {
	draw_path(path, x, y, false);
}