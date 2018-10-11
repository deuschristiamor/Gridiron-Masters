//Decide If Block Is Shed. If So Don't Move
if blocked == true {
	max_speed = 0;
	dice = random_range(1, 100)
	var win_check = false;
	blocked_timer -= 1/room_speed;
	if dice <= block_shed {
		win_check = true
	}
	if win_check == true and blocked_timer <= 0 {
		blocked = false;
		blocked_timer = 2;
	}	
} else max_speed = max_spd;

if blocked == false {
	blocked_timer = 2;
}