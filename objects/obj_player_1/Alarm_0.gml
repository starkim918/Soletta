/// @description Insert description here
// You can write your code in this editor

// check if the front of the user is next to a wall
if (image_xscale < 1) {
	bullet = instance_create_layer(x+sprite_width/2, y+20, "Instances", obj_bullet_player);
} else {
	bullet = instance_create_layer(x-sprite_width/2, y+20, "Instances", obj_bullet_player);
}
sprite_index = spr_player_armor_idle_new;
shooting = false;

