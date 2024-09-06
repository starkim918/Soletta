/// @description Insert description here
// You can write your code in this editor

var collectable = 
{
	nm: other.name,
	wp: other.weapon,
	i_d: other.id
};

var already_in_inventory = false;
// check if the item is not yet in the inventory
for (var i = 0; i < ds_list_size(global.inventory); i += 1) {
	if (global.inventory[| i].i_d == other.id) {
		already_in_inventory = true;
	}
}

if (not already_in_inventory) {
	ds_list_add(global.inventory, collectable);
	show_debug_message(string(other.name) + " added to inventory.\n");
	other.visible = false;
}
