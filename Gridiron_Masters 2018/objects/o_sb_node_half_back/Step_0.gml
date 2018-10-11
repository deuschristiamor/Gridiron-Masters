/// @description Insert description here

//Cap Go
go = 0;
//Follow Who?
follow = o_half_back;

//Diagonal Offset
var diag = .95;

//Track Distance To User
dis = point_distance(x, y, follow.x, follow.y)



//Move Node Up________________________________________
if o_input.up_key {
	go += follow.max_speed;
	x = follow.x;
	y -= go*1;

}
//Move Node Down
if o_input.down_key {
	go += follow.max_speed;
	x = follow.x;
	y += go*1;

}
//Move Node Right
if o_input.right_key {
	go += follow.max_speed;
	x += go*1; 
	y = follow.y; 
	
}
//Move Node Left
if o_input.left_key {
	go += follow.max_speed;
	x -= go*1; 
	y = follow.y; 
	
}
//_____________________________________________________

//Move Node Up & Right
if o_input.up_key and o_input.right_key {
	go += follow.max_speed;
	x += go*diag;
	y -= go*diag;

}
//Move Node Up & Left
if o_input.up_key and o_input.left_key {
	go += follow.max_speed;
	x -= go*diag;
	y -= go*diag;
}
//Move Node Down & Right
if o_input.down_key and o_input.right_key {
	go += follow.max_speed;
	x += go*diag;
	y += go*diag;
}
//Move Node Down & Left
if o_input.down_key and o_input.left_key {
	go += follow.max_speed;
	x -= go*diag;
	y += go*diag;
}




