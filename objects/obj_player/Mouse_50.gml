/// @description Insert description here
// You can write your code in this editor

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
		sprite_index = spr_player_armor_fire_new;
		shoot_cooldown = 0.4 * room_speed *2;
		alarm[0] = 0.4 * room_speed;
	}
}
