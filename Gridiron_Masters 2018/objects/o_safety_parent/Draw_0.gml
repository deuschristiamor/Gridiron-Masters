/// @description Draw self and path
draw_sprite(s_shadow, 1, x-1, y+8);
draw_self();

//draw state
if state < 0 {
	//draw_text(x, y-10, string(state) )
}
//draw pursuit path
if state == pursuing_the_carrier {
	//draw_path(path, x, y, false);
}

//draw ball pursuit path
if state == pursuing_the_ball {
	//draw_path(path, x, y, false);
}

//draw text when hit in a 10r circle
if collision_circle(x, y, 10, o_solid_parent, false, true) {
	//draw_text_transformed(x, y-20, "hit", .5, .5, image_angle);
}

//draw ball if possesed
if has_ball == true and o_home_parent.has_ball == false {
	draw_sprite(s_bal, 0, x+5, y)
}

//Draw path for when running away with the ball
if state == evading_the_pursuit {
	//draw_path(path, x, y, false);
}

//Draw Line To Man
if defending_zone == 1 {
	draw_line_color(x, y, man.x, man.y, c_yellow, c_yellow);
}
//Draw Zone 
draw_circle(x, y, 64, 1);

