//Decide If Block Is Shed. If So Don't Move
if blocked == true {
	max_speed = 0.1;
	blocked_timer -= 1/room_speed;
	if blocked_timer <= 0 {
		blocked = false;
		blocked_timer = 2;
	}	
} else max_speed = max_spd;

if blocked == false {
	blocked_timer = 1;
}