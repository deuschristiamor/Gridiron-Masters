///CONTROL WHEN SELECTED
if global.controlled_player == controlled_player_number {
	if instance_exists(node) {
		steering = vect_add(steering, sb_seek_arrive(node.x,node.y, max_speed*max_speed,1));
	}
}

