/// @description Insert description here
draw_sprite(s_shadow, 1, x-1, y+8);
draw_self();

//draw blocked state
if blocked = true {
	draw_text_transformed(x-10, y+10, "Blocked", .5, .5, image_angle);
}
//Draw Dice
draw_text_transformed(x-10, y+20, "Dice: " + string(dice), .5, .5, image_angle);