//CONTROLLED PLAYER NUMBER
//controlled_player_number = 0;

//Create User Movement Node
node = o_sb_node_wide_reciever5;
if global.controlled_player == controlled_player_number {
	instance_create_depth(x, y, 0, o_sb_node_wide_reciever5)	
}

//Inherit Event
event_inherited();