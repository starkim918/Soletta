/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player) && mouse_check_button_pressed(mb_left)) {
	if (textbox == noone) {
		textbox = instance_create_layer(mouse_x, mouse_y, "Text", obj_textbox);
		textbox.text = story_text;

		effect_create_above(ef_flare, x, y, 3, c_yellow);
	}
} else if (not place_meeting(x, y, obj_player)) {
	if (textbox != noone) {
		instance_destroy(textbox);
		textbox = noone;
	}
}

// https://www.youtube.com/watch?v=Uq-ZF8Gs6mw for more features to add to the text box

// TODO put the items in the object into the players inventory 
//for (var i = 0; i < ds_list_size(items); i += 1) {
//	show_debug_message(string(items[| i]));	
//}

