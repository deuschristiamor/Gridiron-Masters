//Control with user input
if o_input.up_key {
	offset_y = -20
	offset_x = 0
	//instance_create_depth(x, y+offset_y, 0, o_sb_input_control);		
}
//if o_input.up_key and o_input.right_key {
//	offset_y = -20
//	offset_x = 20	
//	instance_create_depth(x+offset_x, y+offset_y, 0, o_sb_input_control);		
//}
if o_input.left_key {
	offset_x = -20
	offset_y = 0
	//instance_create_depth(x+offset_x, y, 0, o_sb_input_control);	
}
if o_input.right_key {
	offset_x = 20
	offset_y = 0
	//instance_create_depth(x+offset_x, y, 0, o_sb_input_control);	
}
if o_input.down_key {
	offset_y = 20
	offset_x = 0	
	//instance_create_depth(x, y+offset_y, 0, o_sb_input_control);	
}

if instance_number(o_sb_input_control) > 1 {
	//with (o_sb_input_control) {
		//instance_destroy();
	//}
}
