/// @description Insert description here
// You can write your code in this editor

text = ""

if (room == rm_space_lvl1) {
	text = "You wake up and find yourself floating in the vast nothingness of space, with no idea how you got there."
}
if (room == rm_ship_lvl1) {
	text = "Don't crash!"
}
if (room == rm_ship_lvl2) {
	text = "Escape!"
}
if (room == rm_ship_lvl3) {
	text = "Get to the mothership!"
}

box_width = sprite_get_width(spr_textbox);
str_height = string_height(text);

depth = 98