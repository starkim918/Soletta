/// @description Insert description here
// You can write your code in this editor

if (room == rm_intro) {
	room_goto(rm_space_lvl1);
} else if (room == rm_gameover_lvl1) {
	room_goto(rm_space_lvl1);
} else if (room == rm_gameover_lvl2) {
	room_goto(rm_ship_lvl2);
} else {
	room_goto(rm_ship_lvl3);
}

