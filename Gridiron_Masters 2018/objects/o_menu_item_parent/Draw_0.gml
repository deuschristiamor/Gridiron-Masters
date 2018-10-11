/// @description Insert description here
// Draw self
draw_self();
//__________

//Draw color, set alignment and draw text________________________
draw_set_color(c_white);
draw_set_font(f_impact);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x, y, string(text), .5, .5, image_angle);
//________________________________________________________________