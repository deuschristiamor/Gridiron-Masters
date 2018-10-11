/// @description Insert description here
//CHANGE SPRITES WITH AI DIRECTION WHEN NOT CONTROLLED
//if global.controlled_player != controlled_player_number {
	target = man;
	scr_control_sprite_tall_dir_dis_target();
	//IF PLAYER IS NOT IN MOTION SET TO IDLE ANIMATION
	scr_no_path_idle_animation();
	//Destroy Node If No Input
	//instance_destroy(node);	
//}

//Change Color
image_blend = c_red;