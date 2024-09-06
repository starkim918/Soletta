/// @description Insert description here
// You can write your code in this editor

enum game_states {
	PLAYING,
	PAUSED
};

global.game_state = game_states.PLAYING;

paused = false;
paused_surf = -1;

x = (camera_get_view_width(view_camera[0])+50)
y = (25)

sprite_index = spr_pause;

hovering = false;
clicked = false;

level = 0;
