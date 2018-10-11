/// @description Insert description here
draw_text_transformed(x, y+10, string(o_sb_input_control1.go), 1, 1, image_angle);
draw_text_transformed(x, y+20, string(o_sb_input_control1.dis), 1, 1, image_angle);
draw_sprite(s_shadow, 1, x-1, y+8);
draw_self();

