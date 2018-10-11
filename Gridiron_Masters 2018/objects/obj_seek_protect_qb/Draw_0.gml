/// @description Insert description here
draw_sprite(s_shadow, 1, x-1, y+8);
draw_self();

//Draw info
if blocking_state == true {
	draw_text_transformed(x-10, y+10, "Blocking", .5, .5, image_angle);
}
draw_text_transformed(x-10, y+20, "Dice: " + string(dice), .5, .5, image_angle);
draw_text_transformed(x-10, y+30, "Blocking: " + string(inst), .5, .5, image_angle);

