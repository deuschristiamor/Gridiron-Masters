///scr_parabolic_motion(x, speed, anglem startx, starty, gravity)

var xx = argument0;
var spd = argument1;
var ang = degtorad(argument2);
var x0 = argument3;
var y0 = argument4;
var gr = argument5;

var posY = 0;
if (cos(angle) != 0 and spd != 0) {
	var posY = -(gr/2) * (power(xx - x0, 2) / power(spd, 2) * power(cos(angle), 2)) + tan(angle) * (xx - x0) + y0;
} else {
	posY = 0;
}

return posY;