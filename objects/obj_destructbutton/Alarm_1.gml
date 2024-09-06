/// @description Insert description here
// You can write your code in this editor

var x_min = camera_get_view_x(view_camera[0]);
var x_max = x_min + camera_get_view_width(view_camera[0]);
var y_min = camera_get_view_y(view_camera[0]);
var y_max = y_min + camera_get_view_height(view_camera[0]);

var rand_x = random_range(x_min, x_max);
var rand_y = random_range(y_min, y_max);
	
effect_create_above(ef_explosion, rand_x, rand_y, 1, c_orange);

alarm[1] = 0.5 * room_speed;

