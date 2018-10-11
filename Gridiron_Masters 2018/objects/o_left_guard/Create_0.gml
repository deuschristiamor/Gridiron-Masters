//CONTROLLED PLAYER NUMBER
if o_Global_Game.formation_offense == o_Global_Game.f_gun {
	controlled_player_number = 5;
}
if o_Global_Game.formation_offense == o_Global_Game.f_gun_split {
	controlled_player_number = 6;
}
if o_Global_Game.formation_offense == o_Global_Game.f_i {
	controlled_player_number = 6;
}
if o_Global_Game.formation_offense == o_Global_Game.f_i_spread {
	controlled_player_number = 6;
}

//Create User Movement Node
node = o_sb_node_left_guard;
if global.controlled_player == controlled_player_number {
	instance_create_depth(x, y, 0, o_sb_node_left_guard)	
}

//Inherit Event
event_inherited();


