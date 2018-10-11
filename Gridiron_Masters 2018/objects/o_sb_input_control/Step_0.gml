/// @description Insert description here
//STAY ON OBJECT
x = mouse_x
y = mouse_y

//Move Node Up________________________________________
if o_input.up_key {
	t = -90;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));
	

}
//Move Node Down
if o_input.down_key {
	t = 90;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));
	
}
//Move Node Right
if o_input.right_key {
	t = 0;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));
	
}
//Move Node Left
if o_input.left_key {
	t = 180;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));
	
}
//_____________________________________________________

//Move Node Up & Right
if o_input.up_key and o_input.right_key {
	t = -45;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));

}
//Move Node Up & Left
if o_input.up_key and o_input.left_key {
	t = -135;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));

}
//Move Node Down & Right
if o_input.down_key and o_input.right_key {
	t = -315;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));

}
//Move Node Down & Left
if o_input.down_key and o_input.left_key {
	t = -225;
	x = mouse_x + 64 * cos(degtorad(t));
	y = mouse_y + 64 * sin(degtorad(t));

}




