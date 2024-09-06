/// @description Insert description here
// You can write your code in this editor

if (textbox == noone and room != rm_vent_puzzle) {
	textbox = instance_create_layer(x, y, "Text", obj_textbox);
	if (room == rm_outdoors_lvl1) {
		textbox.text = "You have landed on some strange planet. Not really knowing where you are or what to do, you must explore to start figuring out what happened.";
	}
	if (room == rm_enemy_base_lvl1) {
		textbox.text = "Smelly, old, and damp. Seems just like where a villan would live."	
	}
	if (room == rm_enemy_base_lvl2) {
		textbox.text = "You need to get to the next room, but the doors won't open yet."
	}
} else if (textbox != noone) {
	instance_destroy(textbox);
	textbox = noone;
}	

