//CHOOSE FORMATION
if global.game_state == global.pick_play_state {
	instance_create_depth(x, y, 0, o_button);
} else instance_destroy(o_button);





if global.game_state == global.pick_play_state {
	if keyboard_check_pressed(vk_numpad1) {
		formation_offense = f_gun;
		global.play_offense_ready = true;
		show_message("Offense Ready")
	}
}
		if formation_offense == f_gun and global.game_state == global.spawn_state {
				instance_create_depth(x, y+50, 0, o_quarterback)
				instance_create_depth(x, y, 0, o_center)
				instance_create_depth(x-40, y, 0, o_left_tackle)
				instance_create_depth(x-20, y, 0, o_left_guard)
				instance_create_depth(x+20, y, 0, o_right_guard)
				instance_create_depth(x+40, y, 0, o_right_tackle)
				instance_create_depth(x+20, y+50, 0, o_half_back)
				instance_create_depth(x+80, y, 0, o_wide_reciever)
				instance_create_depth(x+120, y+5, 0, o_wide_reciever2)
				instance_create_depth(x-80, y, 0, o_wide_reciever3)
				instance_create_depth(x-120, y+5, 0, o_wide_reciever4)
		}			

if global.game_state == global.pick_play_state {
	if keyboard_check_pressed(vk_numpad2) {
		formation_offense = f_gun_split;
		global.play_offense_ready = true;
		show_message("Offense Ready")
	}
}
		if formation_offense == f_gun_split and global.game_state == global.spawn_state {
			instance_create_depth(x, y+50, 0, o_quarterback)
			instance_create_depth(x+20, y+50, 0, o_half_back)
			instance_create_depth(x-20, y+50, 0, o_half_back2)
			instance_create_depth(x, y, 0, o_center)
			instance_create_depth(x-40, y, 0, o_left_tackle)
			instance_create_depth(x-20, y, 0, o_left_guard)
			instance_create_depth(x+20, y, 0, o_right_guard)
			instance_create_depth(x+40, y, 0, o_right_tackle)
			instance_create_depth(x+80, y, 0, o_wide_reciever)
			instance_create_depth(x+120, y+5, 0, o_wide_reciever2)
			instance_create_depth(x-80, y, 0, o_wide_reciever3)
		}
if global.game_state == global.pick_play_state {
	if keyboard_check_pressed(vk_numpad3) {
		formation_offense = f_i;
		global.play_offense_ready = true;
		show_message("Offense Ready")
	}
}
		if formation_offense == f_i and global.game_state == global.spawn_state {
			instance_create_depth(x, y+15, 0, o_quarterback)
			instance_create_depth(x, y+40, 0, o_half_back)
			instance_create_depth(x, y+60, 0, o_full_back)
			instance_create_depth(x-60, y, 0, o_tight_end)
			instance_create_depth(x-80, y, 0, o_tight_end2)
			instance_create_depth(x, y, 0, o_center)
			instance_create_depth(x-40, y, 0, o_left_tackle)
			instance_create_depth(x-20, y, 0, o_left_guard)
			instance_create_depth(x+20, y, 0, o_right_guard)
			instance_create_depth(x+40, y, 0, o_right_tackle)
			instance_create_depth(x+80, y+5, 0, o_wide_reciever)
		}

if global.game_state == global.pick_play_state {
	if keyboard_check_pressed(vk_numpad4) {
		formation_offense = f_i_spread;
		global.play_offense_ready = true;
		show_message("Offense Ready")
	}
}
			if formation_offense == f_i_spread and global.game_state == global.spawn_state {
				instance_create_depth(x, y+15, 0, o_quarterback)
				instance_create_depth(x, y+40, 0, o_half_back)
				instance_create_depth(x, y+60, 0, o_full_back)
				instance_create_depth(x-60, y, 0, o_tight_end)
				instance_create_depth(x-80, y, 0, o_tight_end2)
				instance_create_depth(x, y, 0, o_center)
				instance_create_depth(x-40, y, 0, o_left_tackle)
				instance_create_depth(x-20, y, 0, o_left_guard)
				instance_create_depth(x+20, y, 0, o_right_guard)
				instance_create_depth(x+40, y, 0, o_right_tackle)
				instance_create_depth(x+160, y+5, 0, o_wide_reciever)
			}



