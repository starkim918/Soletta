/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

// different text for friend depending on the room

switch (room)
{
	case rm_vent_puzzle:
		// TODO make the player face the other way likely
		story_text = "Looks like you are in quite a pinch. Let me see if I can help out";
	break;
	
	case rm_enemyship_lvl3:
		story_text = "We need to destroy the ship before they destroy my home planet! We need to act quickly and destory the ship. There should be a button somewhere...";
	
}

