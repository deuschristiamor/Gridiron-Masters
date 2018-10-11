//Get tackled
if tackled == true {
	//Draw Yardage Gain_____________________________________________
	show_message("A Gain of " + (string((o_LOS.y-y)/21)) + " yards")
	image_angle = 90;
	//______________________________________________________________
	
	//Destroy all objects_____________
	instance_destroy(o_sb_node_parent)
	instance_destroy(o_player_parent)
	instance_destroy(o_ball_cannon)
	//________________________________
	
	//Minus one down____________________________
	o_Global_Game.downs -= 1;
	global.game_state = global.pick_play_state;
	//__________________________________________
	
	//Reset Spawn______________
	o_Global_Game.spawned = 0;
	//_________________________
} else image_angle = 0;

