/// @description Insert description here
// You can write your code in this editor

if (global.game_state == game_states.PLAYING) {
	sprite_index = spr_pause;
} else {
	sprite_index = spr_play;
}


if (room != rm_intro) {
	if keyboard_check_pressed(ord("P")) {
		if (global.game_state == game_states.PLAYING) {
			global.game_state = game_states.PAUSED;
		} else {
			global.game_state = game_states.PLAYING;
		}
		paused = !paused;
		if (!paused) {
			instance_activate_all();
			surface_free(paused_surf);
            paused_surf = -1;
        } 
    }
	
	if (paused) {
		if (keyboard_check_pressed(ord("R"))) {
			game_restart();
		} 
	}
}

if (room == rm_vent_puzzle and obj_player.x > room_width) {
	game_restart();	
}

