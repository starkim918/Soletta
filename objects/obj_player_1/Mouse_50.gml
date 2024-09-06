/// @description Insert description here
// You can write your code in this editor

if (room != rm_space_lvl1) {

	var has_weapon = false;
	for (var i = 0; i < ds_list_size(global.inventory); i += 1) {
		if (global.inventory[| i].wp == true) {
			has_weapon = true;
		}
	}

	// Shoot bullets in the direction of the mouse??
	if (life_status and has_weapon) {
		shooting = true;
		if (shoot_cooldown < 0) {
			xscale = image_xscale
			sprite_index = spr_player_armor_fire_new;
			image_xscale = xscale;
			shoot_cooldown = 0.4 * room_speed *2;
			alarm[0] = 0.4 * room_speed;
		}
	}

}