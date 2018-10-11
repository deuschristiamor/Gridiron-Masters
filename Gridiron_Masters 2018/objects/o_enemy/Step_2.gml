/// @description hold ball timer
if has_ball == true {
	hold_ball_timer -= 1/room_speed;
}
if has_ball == false { 
	wait_to_get_ball -=1/room_speed;
}

//CONTROL SPRITES BASED ON DIRECTION
image_blend = c_red;
scr_control_sprite_direction();

//IF PLAYER IS NOT IN MOTION SET TO IDLE ANIMATION
scr_no_path_idle_animation();
//If no path is followed and ball is being held just idle(for AI)
if has_ball == false and !instance_exists(o_ball) {
	motion = 0;
}

