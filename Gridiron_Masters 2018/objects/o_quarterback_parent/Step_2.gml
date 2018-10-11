///ADD TO METER IF CONTROLLED
scr_control_meter();

//CHANGE SPRITES WITH AI DIRECTION WHEN NOT CONTROLLED
if global.controlled_player != controlled_player_number {
	scr_control_sprite_direction();
	//Destroy Node If No Input
	instance_destroy(node);
}
