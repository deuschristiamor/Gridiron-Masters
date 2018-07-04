///draw text
draw_text(14, 16, "Meter: " + string(meter))

//Speed Meter
//draw_text(28, 114, "Speed Meter " + string(spd_meter))
//speed
draw_text(28, 84, "Horizontal Speed " + string(hspd))
draw_text(28, 104, "Vertical Speed " + string(vspd))
// player has ball
draw_text(28, 124, "Player Has Ball? " + string(o_player.has_ball))
//enemy has ball
draw_text(28, 144, "Enemy Has Ball? " + string(o_enemy.has_ball))

//enemy hold ball timer
draw_text(28, 164, "Enemy Ball Timer " + string(o_enemy.hold_ball_timer))
//enemy wait to hold ball timer
draw_text(28, 184, "Enemy Wait To Hold Ball Timer " + string(o_enemy.wait_to_get_ball))