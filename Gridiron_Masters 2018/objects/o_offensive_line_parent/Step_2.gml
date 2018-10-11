///ADD TO METER IF CONTROLLED
scr_control_meter();

//CHANGE SPRITES WITH AI DIRECTION WHEN NOT CONTROLLED
if global.controlled_player != controlled_player_number {
	target = man;
	scr_control_sprite_fat_dir_dis_target();
	//IF PLAYER IS NOT IN MOTION SET TO IDLE ANIMATION
	scr_no_path_fat_idle_animation();
	//Destroy Node If No Input
	instance_destroy(node);	
}
