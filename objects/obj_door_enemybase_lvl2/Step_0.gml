/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < 225) {
		var keys = 0;
		for (var i = 0; i < ds_list_size(global.inventory); i += 1) {
			if (global.inventory[| i].nm == "key") {
				keys+=1;
			}
		}
		if (keys >= 2) {
			image_index = 1;	
		} else {
			image_index = 0;	
		}
	}
	else {
		image_index = 0;	
	}
}



