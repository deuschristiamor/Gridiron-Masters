//Movement Input
if (keyboard_check(vk_right)){
    hspd+=1;	
}

if (keyboard_check(vk_left)){
    hspd-=1;	
}

if (keyboard_check(vk_up)){
    vspd-=1;	
}

if (keyboard_check(vk_down)){
    vspd+=1;	
}

//This does something
if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
    hspd-=sign(hspd);
}

if (!keyboard_check(vk_down) && !keyboard_check(vk_up)){
    vspd-=sign(vspd);
}

//limit speed
hspd = clamp(hspd, -maxhspd, maxhspd);
vspd = clamp(vspd, -maxvspd, maxvspd);
maxhspd = clamp(maxhspd, -supermaxhspd, supermaxhspd)
maxvspd = clamp(maxvspd, -supermaxvspd, supermaxvspd)

//Move
x += hspd
y += vspd

///Meter count
//meter cap
meter = clamp(meter, 0, 5)

//subtract from meter
meter -= 1/room_speed;

//cap meter
if meter < 0 {
	meter = 0
}

//add speed if meter is more than 0
if meter > 0 and o_input.sprint_key {
	maxhspd += 1
	maxvspd += 1
} 
//return to original max speed
if hspd == 0 and vspd == 0 {
	maxhspd = 5;
	maxvspd = 5;
}

//CREATE BALL
//if we have the ball then we can create it or "drop" it on the field
if o_input.drop_key {
	if has_ball == true and o_enemy.has_ball == false {
		instance_create_depth(x+10, y, 0, o_ball);
		has_ball = false;
	}
}

