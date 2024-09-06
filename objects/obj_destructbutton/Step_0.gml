/// @description Insert description here
// You can write your code in this editor

if (clicked and not explosion_started) {
	// randomly generate explosions in the room
	alarm[1] = 1 * room_speed;
	explosion_started = true;
	shake = true;
}

// Inherit the parent event
event_inherited();

if (not shake) {
	camera_set_view_pos(view_camera[0], view_x, view_y);
	view_x = camera_get_view_x(view_camera[0]);
	view_y = camera_get_view_y(view_camera[0]);	
}
if (shake) {
	view_x = camera_get_view_x(view_camera[0]);
	view_y = camera_get_view_y(view_camera[0]);
	alarm[2] = 5;
	camera_set_view_pos(view_camera[0], view_x+random_range(-10, 10), view_y+random_range(-10, 10));
	shake = false;
}

