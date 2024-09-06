/// @description Insert description here
// You can write your code in this editor

if (life_status) {
	hp -= 1;
	instance_destroy(other);

	if (hp <= 0) {
		sprite_index = spr_enemy_dead;
		alarm[1] = 0.4 * room_speed;
		// Retry from last checkpoint
	}
}




