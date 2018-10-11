/// @description FOLLOW MOUSE
x = mouse_x;
y = mouse_y;

//Click On Target
if mouse_check_button_pressed(mb_left) {
	throw_target = instance_place(x, y, o_home_parent);	
	if !place_meeting(x, y, o_home_parent) {
		throw_target = object_index;
	}
}

