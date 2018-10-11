///COLLIDE
if hspd != 0
if !place_free(x+hspd, y) {
	if hspd > 0 move_contact_solid(0, hspd)
	if hspd < 0 move_contact_solid(180, -hspd)
	hspd = 0
}

if vspd != 0
if !place_free(x+vspd, y) {
	if vspd > 0 move_contact_solid(270, vspd)
	if vspd < 0 move_contact_solid(90, -vspd)
	vspd = 0
}