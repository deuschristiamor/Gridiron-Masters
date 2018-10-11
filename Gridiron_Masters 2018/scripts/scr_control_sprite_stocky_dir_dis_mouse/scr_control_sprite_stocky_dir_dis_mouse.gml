//CONTROL SPRITES BASED ON DIRECTION FROM OBJECT
image_speed = 1;
dir = point_direction(x, y, mouse_x, mouse_y);
dis = point_distance(x, y, mouse_x, mouse_y);

if dir >= 45 and dir <= 135 and sprite_index != s_player_stocky_run_up {
	sprite_index = s_player_stocky_run_up;
} else if dir >= 135 and dir <= 225 and sprite_index != s_player_stocky_run_left {
	sprite_index = s_player_stocky_run_left;
} else if dir >= 225 and dir <= 315 and sprite_index != s_player_stocky_run_down {
	sprite_index = s_player_stocky_run_down
} else if dir >= 315 or dir <= 45 and sprite_index != s_player_stocky_run_right {
	sprite_index = s_player_stocky_run_right
}

//CONTROL IDLE ANIMATION BASED ON DISTANCE FROM TARGET
if dis <= 1 and sprite_index != s_player_stocky_idle {
	sprite_index = s_player_stocky_idle;
}





