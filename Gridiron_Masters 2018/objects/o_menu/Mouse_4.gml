/// @description Insert description here
// Menu drop________________________________
if position_meeting(mouse_x, mouse_y, self) {
	if instance_exists(o_menu_item) {
		with (o_menu_item) {
			instance_destroy();
		}
	}
	else {
		var yIncremenent = sprite_get_height(s_menu);
		var yy = y + yIncremenent - 2;
		for (var i = 0; i < ds_list_size(my_list); i++) {
			var item = instance_create_depth(x, yy, 0, o_menu_item);
			item.text = ds_list_find_value(my_list, i); 
			yy += yIncremenent - 2;
		}
	}
}
else {
	if !position_meeting(mouse_x, mouse_y, o_menu_item) {	
			if instance_exists(o_menu_item) {
				with (o_menu_item) {
					instance_destroy();
				}
			}
	}
}