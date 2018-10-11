//CONTROL SPRITES BASED ON DIRECTION
image_blend = c_red;
scr_control_sprite_fat_dir_dis_target();

//IF PLAYER IS NOT IN MOTION SET TO IDLE ANIMATION
scr_no_path_fat_idle_animation();
//If no path is followed and ball is being held just idle(for AI)
if has_ball == false and !instance_exists(o_ball) {
	motion = 0;
}
