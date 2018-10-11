if global.game_state == global.pick_play_state {
		if keyboard_check_pressed(vk_numpad5) {
			formation_defense = f_4_3;
			global.play_defense_ready = true;
			show_message("Defense Ready")
		}
}
			if formation_defense == f_4_3 and global.game_state == global.spawn_state {
					instance_create_depth(x+40, y-40, 0, o_outer_linebacker)					
					instance_create_depth(x, y-40, 0, o_middle_linebacker)
					instance_create_depth(x-40, y-40, 0, o_outer_linebacker2)									
					instance_create_depth(x-10, y-15, 0, o_defensive_tackle)
					instance_create_depth(x+10, y-15, 0, o_defensive_tackle2) 
					instance_create_depth(x+30, y-15, 0, o_defensive_end)
					instance_create_depth(x-30, y-15, 0, o_defensive_end2)
					instance_create_depth(x+120, y-20, 0, o_cornerback)
					instance_create_depth(x-120, y-20, 0, o_cornerback2)
					instance_create_depth(x-80, y-140, 0, o_free_safety)
					instance_create_depth(x+80, y-140, 0, o_strong_safety)
			}		
