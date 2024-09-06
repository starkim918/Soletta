/// @description Insert description here
// You can write your code in this editor

enum game_states_OLD {
	PLAYING,
	PAUSED
};

global.game_state_OLD = game_states.PLAYING;

paused = false;
paused_surf = -1;

x = (camera_get_view_width(view_camera[0])+50)
y = (25)

sprite_index = spr_pause;

hovering = false;
clicked = false;

