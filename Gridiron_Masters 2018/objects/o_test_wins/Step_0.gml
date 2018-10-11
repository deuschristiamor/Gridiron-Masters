/// @description Insert description here
//Calculate Blocking vs Shed
if show_timer <= 0 {
	n1 = random_range(1, 100);
	n2 = random_range(1, 100);
	var win1 = false;
	var win2 = false;
	
	if n1 <= obj_seek_protect_qb.blocking {
		win1 = true		
	}
	if n2 <= obj_seek_qb.block_shed {
		win2 = true			
	}
	if win1  = true and win2 = false {
		block_wins +=1
		battles+=1
	}
	if win1  = false and win2 = true {
		shed_wins +=1
		battles+=1
	}	
	if win1 = true and win2 = true {
		ties += 1
		battles+=1
	}
	show_timer = 1;
}