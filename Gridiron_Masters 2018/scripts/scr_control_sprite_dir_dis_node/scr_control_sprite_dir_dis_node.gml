//CONTROL SPRITES BASED ON DIRECTION FROM OBJECT
image_speed = 1;
dir = point_direction(x, y, node.x, node.y);
dis = point_distance(x, y, node.x, node.y);

if dir >= 48 and dir <= 138 and sprite_index != s_player_tall_run_up {
	sprite_index = s_player_tall_run_up;
} else if dir >= 138 and dir <= 228 and sprite_index != s_player_tall_run_left {
	sprite_index = s_player_tall_run_left;
} else if dir >= 228 and dir <= 318 and sprite_index != s_player_tall_run_down {
	sprite_index = s_player_tall_run_down
} else if dir >= 318 or dir <= 48 and sprite_index != s_player_tall_run_right {
	sprite_index = s_player_tall_run_right
}

//CONTROL SPRITES FOR JUMPING
/*
if o_input.jump_key and sprite_index != s_player_tall_jump_right {
	sprite_index = s_player_tall_jump_right;
}
*/

//CONTROL IDLE ANIMATION BASED ON DISTANCE FROM TARGET
if dis <= 1 and sprite_index != s_player_tall_idle {
	sprite_index = s_player_tall_idle;
}





