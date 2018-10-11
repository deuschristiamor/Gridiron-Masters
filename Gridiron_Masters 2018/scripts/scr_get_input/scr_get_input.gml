//MOVEMENT INPUT
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//ACTION INPUT
throw_key = mouse_check_button_pressed(mb_left);
drop_key = keyboard_check_pressed(ord("T"));
sprint_key = keyboard_check_pressed(vk_control);
switch_key = keyboard_check_pressed(vk_tab)
jump_key = keyboard_check(ord("J"));
//alternate switch key is "F"