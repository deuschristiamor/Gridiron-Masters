/// @description Insert description here

//Cap Go
go = 0;

//Diagonal Offset
var diag = .95;

//Track Distance To User
dis = point_distance(x, y, o_quarterback.x, o_quarterback.y)



//Move Node Up________________________________________
if o_input.up_key {
	go += o_quarterback.max_speed;
	x = o_quarterback.x;
	y -= go*1;	
}
//Move Node Down
if o_input.down_key {
	go += o_quarterback.max_speed;
	x = o_quarterback.x;
	y += go*1;	
}
//Move Node Right
if o_input.right_key {
	go += o_quarterback.max_speed;
	x += go*1; 
	y = o_quarterback.y;	
}
//Move Node Left
if o_input.left_key {
	go += o_quarterback.max_speed;
	x -= go*1; 
	y = o_quarterback.y; 
}
//_____________________________________________________

//Move Node Up & Right
if o_input.up_key and o_input.right_key {
	go += o_quarterback.max_speed;
	x += go*diag;
	y -= go*diag;

}
//Move Node Up & Left
if o_input.up_key and o_input.left_key {
	go += o_quarterback.max_speed;
	x -= go*diag;
	y -= go*diag;
}
//Move Node Down & Right
if o_input.down_key and o_input.right_key {
	go += o_quarterback.max_speed;
	x += go*diag;
	y += go*diag;
}
//Move Node Down & Left
if o_input.down_key and o_input.left_key {
	go += o_quarterback.max_speed;
	x -= go*diag;
	y += go*diag;
}







