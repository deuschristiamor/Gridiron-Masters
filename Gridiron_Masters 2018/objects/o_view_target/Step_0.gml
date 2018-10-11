/// @description FOLLOW SELECTED PLAYER IN CURRENT PACKAGE


//GUN
if global.game_state == global.play_state and instance_number(o_solid_parent) > 0 {
if o_Global_Game.formation_offense == o_Global_Game.f_gun {
	if global.controlled_player == 1 {
		x = o_quarterback.x;
		y = o_quarterback.y;
	}

	if global.controlled_player == 2 {
		x = o_half_back.x;
		y = o_half_back.y;
	}

	if global.controlled_player == 3 {
		x = o_center.x;
		y = o_center.y;
	}

	if global.controlled_player == 4 {
		x = o_left_tackle.x;
		y = o_left_tackle.y;
	}

	if global.controlled_player == 5 {
		x = o_left_guard.x;
		y = o_left_guard.y;
	}
	if global.controlled_player == 6 {
		x = o_right_tackle.x;
		y = o_right_tackle.y;
	}

	if global.controlled_player == 7 {
		x = o_right_guard.x;
		y = o_right_guard.y;
	}

	if global.controlled_player == 8 {
		x = o_wide_reciever.x;
		y = o_wide_reciever.y;
	}

	if global.controlled_player == 9 {
		x = o_wide_reciever2.x;
		y = o_wide_reciever2.y;
	}

	if global.controlled_player == 10 {
		x = o_wide_reciever3.x;
		y = o_wide_reciever3.y;
	}
		if global.controlled_player == 11 {
		x = o_wide_reciever4.x;
		y = o_wide_reciever4.y;
	}

}
//GUN SPLIT
if o_Global_Game.formation_offense == o_Global_Game.f_gun_split {
	if global.controlled_player == 1 {
		x = o_quarterback.x;
		y = o_quarterback.y;
	}

	if global.controlled_player == 2 {
		x = o_half_back.x;
		y = o_half_back.y;
	}

	if global.controlled_player == 3 {
		x = o_half_back2.x;
		y = o_half_back2.y;
	}

	if global.controlled_player == 4 {
		x = o_center.x;
		y = o_center.y;
	}

	if global.controlled_player == 5 {
		x = o_left_tackle.x;
		y = o_left_tackle.y;
	}
	if global.controlled_player == 6 {
		x = o_left_guard.x;
		y = o_left_guard.y;
	}

	if global.controlled_player == 7 {
		x = o_right_tackle.x;
		y = o_right_tackle.y;
	}

	if global.controlled_player == 8 {
		x = o_right_guard.x;
		y = o_right_guard.y;
	}

	if global.controlled_player == 9 {
		x = o_wide_reciever.x;
		y = o_wide_reciever.y;
	}

	if global.controlled_player == 10 {
		x = o_wide_reciever2.x;
		y = o_wide_reciever2.y;
	}
		if global.controlled_player == 11 {
		x = o_wide_reciever3.x;
		y = o_wide_reciever3.y;
	}

}
//I FORMATION
if o_Global_Game.formation_offense == o_Global_Game.f_i {
	if global.controlled_player == 1 {
		x = o_quarterback.x;
		y = o_quarterback.y;
	}

	if global.controlled_player == 2 {
		x = o_half_back.x;
		y = o_half_back.y;
	}
	if global.controlled_player == 3 {
		x = o_full_back.x;
		y = o_full_back.y;
	}

	if global.controlled_player == 4 {
		x = o_center.x;
		y = o_center.y;
	}

	if global.controlled_player == 5 {
		x = o_left_tackle.x;
		y = o_left_tackle.y;
	}

	if global.controlled_player == 6 {
		x = o_left_guard.x;
		y = o_left_guard.y;
	}
	if global.controlled_player == 7 {
		x = o_right_tackle.x;
		y = o_right_tackle.y;
	}

	if global.controlled_player == 8 {
		x = o_right_guard.x;
		y = o_right_guard.y;
	}

	if global.controlled_player == 9 {
		x = o_tight_end.x;
		y = o_tight_end.y;
	}

	if global.controlled_player == 10 {
		x = o_tight_end2.x;
		y = o_tight_end2.y;
	}

	if global.controlled_player == 11 {
		x = o_wide_reciever.x;
		y = o_wide_reciever.y;
	}

}
//I FORMATION SPREAD
if o_Global_Game.formation_offense == o_Global_Game.f_i_spread {
	if global.controlled_player == 1 {
		x = o_quarterback.x;
		y = o_quarterback.y;
	}

	if global.controlled_player == 2 {
		x = o_half_back.x;
		y = o_half_back.y;
	}
	if global.controlled_player == 3 {
		x = o_full_back.x;
		y = o_full_back.y;
	}

	if global.controlled_player == 4 {
		x = o_center.x;
		y = o_center.y;
	}

	if global.controlled_player == 5 {
		x = o_left_tackle.x;
		y = o_left_tackle.y;
	}

	if global.controlled_player == 6 {
		x = o_left_guard.x;
		y = o_left_guard.y;
	}
	if global.controlled_player == 7 {
		x = o_right_tackle.x;
		y = o_right_tackle.y;
	}

	if global.controlled_player == 8 {
		x = o_right_guard.x;
		y = o_right_guard.y;
	}

	if global.controlled_player == 9 {
		x = o_tight_end.x;
		y = o_tight_end.y;
	}

	if global.controlled_player == 10 {
		x = o_tight_end2.x;
		y = o_tight_end2.y;
	}

	if global.controlled_player == 11 {
		x = o_wide_reciever.x;
		y = o_wide_reciever.y;
	}

}
}