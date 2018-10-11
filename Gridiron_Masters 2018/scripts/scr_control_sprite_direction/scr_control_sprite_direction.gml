//CONTROL SPRITES BASED ON DIRECTION
image_speed = 1;

if direction >= 45 and direction <= 135 and sprite_index != s_player_tall_run_up {
	sprite_index = s_player_tall_run_up;
} else if direction >= 135 and direction <= 225 and sprite_index != s_player_tall_run_left {
	sprite_index = s_player_tall_run_left;
} else if direction >= 225 and direction <= 315 and sprite_index != s_player_tall_run_down {
	sprite_index = s_player_tall_run_down
} else if direction >= 315 or direction <= 45 and sprite_index != s_player_tall_run_right {
	sprite_index = s_player_tall_run_right
}







