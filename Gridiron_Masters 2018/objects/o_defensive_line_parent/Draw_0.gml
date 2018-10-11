/// @description Insert description here
draw_sprite(s_shadow, 1, x-1, y+8);
draw_self();

//draw blocked state
if blocked = true {
	//draw_text_transformed(x-10, y+10, "Blocked", .5, .5, image_angle);
}
//Draw Dice
//draw_text_transformed(x-10, y+20, "Dice: " + string(dice), .5, .5, image_angle);

//draw text when hit in a 10r circle
if collision_circle(x, y, 10, o_solid_parent, false, true) {
	//draw_text_transformed(x, y-20, "hit", .5, .5, image_angle);
}

//draw ball if possesed
if has_ball == true and o_home_parent.has_ball == false {
	draw_sprite(s_bal, 0, x+5, y)
}
//Draw Target
//draw_text_transformed(x, y-30, "Target: " + string(target), .5, .5, image_angle);

//Draw Line To Target
draw_line_color(x, y, target.x, target.y, c_red, c_red);