/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < 225) {
		image_index = 1;	
	}
	else {
		image_index = 0;	
	}
}

