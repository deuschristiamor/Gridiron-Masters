//set meter if pressed
if global.controlled_player == controlled_player_number {
	if keyboard_check_pressed(vk_control) {
		meter = .5;
	}
}