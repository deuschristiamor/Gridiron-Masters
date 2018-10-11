///CONTROL SPRITES

speed_up = 5;
//idle
if hspd == 0 and vspd == 0 {
	sprite_index = s_player_stocky_idle;
	image_speed = .7
}
//left and right
if hspd < 0 {
	sprite_index = s_player_stocky_run_left;
	image_speed = hspd/speed_up
} else if hspd > 0 {
	sprite_index = s_player_stocky_run_right;
	image_speed = hspd/speed_up
} else if vspd > 0 {
	sprite_index = s_player_stocky_run_down;
	image_speed = vspd/speed_up
} else if vspd < 0 {
	sprite_index = s_player_stocky_run_up;
	image_speed = vspd/speed_up
}



