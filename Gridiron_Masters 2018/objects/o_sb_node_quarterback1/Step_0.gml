/// @description Insert description here


//Move Node left________________________________________
if keyboard_check_pressed(vk_left) {
	Xaxis -= 1;
}
if keyboard_check_released(vk_left) {
	Xaxis += 1;
}
//right
if keyboard_check_pressed(vk_right) {
	Xaxis += 1;
}
if keyboard_check_released(vk_right) {
	Xaxis -= 1;
}

//up
if keyboard_check_pressed(vk_up) {
	Yaxis -= 1;
}
if keyboard_check_released(vk_up) {
	Yaxis += 1;
}
//down
if keyboard_check_pressed(vk_down) {
	Yaxis += 1;
}
if keyboard_check_released(vk_down) {
	Yaxis -= 1;
}
//__________________________________________________________


//x
if Xaxis != 0 {
	dx += cos(arccos(Xaxis/(sqrt((abs(Yaxis^2))+(abs(Xaxis^2))))))*.3

} else {
	dx *= damp;
}
//y
if Yaxis != 0 {
	dy += sin(arcsin(Yaxis/(sqrt((abs(Yaxis^2))+(abs(Xaxis^2))))))*.3	
} else {
	dy *= damp;
}

//clamp
dx = clamp(dx, -1, 1);
dy = clamp(dy, -1, 1);



g = sin(arcsin(dy/(sqrt((abs(dy^2))+(abs(dx^2))))))*spd;
h = cos(arccos(dx/(sqrt((abs(dy^2))+(abs(dx^2))))))*spd;

//sprinting_______________________________________________
sprint_timer += 1;
if sprint_timer > room_speed*.4 {
	sprint -=.4;
	sprint = clamp(sprint, 1, 3);
	sprint_timer = 0;
}

if o_input.sprint_key {
	sprint += .2;	
	sprint = clamp(sprint, 1, 3);
}

//sprinting end_____________________________________________

//
x += cos(arccos(dx/(sqrt((abs(dy^2))+(abs(dx^2))))))*spd*sprint;
y += sin(arcsin(dy/(sqrt((abs(dy^2))+(abs(dx^2))))))*spd*sprint;
//


