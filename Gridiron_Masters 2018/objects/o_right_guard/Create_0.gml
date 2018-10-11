//CONTROLLED PLAYER NUMBER
if o_Global_Game.formation_offense == o_Global_Game.f_gun {
	controlled_player_number = 7;
}
if o_Global_Game.formation_offense == o_Global_Game.f_gun_split {
	controlled_player_number = 8;
}
if o_Global_Game.formation_offense == o_Global_Game.f_i {
	controlled_player_number = 8;
}
if o_Global_Game.formation_offense == o_Global_Game.f_i_spread {
	controlled_player_number = 8;
}

//Create User Movement Node
node = o_sb_node_right_guard;
if global.controlled_player == controlled_player_number {
	instance_create_depth(x, y, 0, o_sb_node_right_guard)	
}

//Inherit Event
event_inherited();