/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player_spaceship) and obj_player_spaceship.y > 150) {
	var cam_y = camera_get_view_y(cam);
	var cam_h = camera_get_view_height(cam);
	
	if (obj_player_spaceship.x > room_width - obj_player_spaceship.sprite_width/2) {
		obj_player_spaceship.x = room_width - obj_player_spaceship.sprite_width/2;
	}
	if (obj_player_spaceship.x < obj_player_spaceship.sprite_width/2) {
		obj_player_spaceship.x = obj_player_spaceship.sprite_width/2;
	}
	if (obj_player_spaceship.y > cam_y + cam_h - obj_player_spaceship.sprite_height/2) {
		obj_player_spaceship.y = cam_y + cam_h - obj_player_spaceship.sprite_height/2;
	}
	if (obj_player_spaceship.y < cam_y + obj_player_spaceship.sprite_height/2) {
		obj_player_spaceship.y = cam_y + obj_player_spaceship.sprite_height/2;
	}
	
	obj_player_spaceship.y -= spd;
	y-=spd;
}

