///DRAW SPRITES IN THE RIGHT ORDER

image_xscale = 1;
image_yscale = 1;

//Draw circle if controlled
if global.controlled_player == controlled_player_number {
	draw_circle(x-2, y+6, 6, true)
}

///draw self and shadow
draw_sprite(s_shadow, 1, x-1, y+8);
draw_self();


//draw ball
if has_ball == true and o_away_parent.has_ball == false {
	draw_sprite(s_bal, 0, x+5, y);
}

//draw text when hit in a 10r circle
if collision_circle(x, y, 10, o_away_parent, false, true) {
	//draw_text_transformed(x, y+20, "hit", .5, .5, image_angle)
}


//Draw Node ID
//draw_text_transformed(x, y+30,"Tackled: " + string(tackled), .5, .5, image_angle);
//draw_text_transformed(x, y+30, string(chosen_block), .5, .5, image_angle);
