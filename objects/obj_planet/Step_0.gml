

if (place_meeting(x, y, obj_player_spaceship) && mouse_check_button_pressed(mb_left)) {
	if (room == rm_ship_lvl1) room_goto(rm_outdoors_lvl1);
	if (room == rm_ship_lvl2) room_goto(rm_enemy_base_lvl2);
	if (room == rm_ship_lvl3) room_goto(rm_enemyship_lvl3);
}




