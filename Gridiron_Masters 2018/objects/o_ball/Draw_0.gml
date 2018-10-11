///Draw Ball At Calculated Height
var divi = 18;
var scale = (abs(z)+divi)/divi
image_blend=c_black;
image_alpha = 0.6;
image_xscale = 0.7;
image_yscale = 0.7;
draw_self();//shadow

image_blend = c_white;
y+=z;
image_alpha = 1;
image_xscale = scale;
image_yscale = scale;
image_angle = direction;
//If not moving don't animate
if speed == 0 {
	image_speed = 0 
}
draw_self();//ball
y-=z;



