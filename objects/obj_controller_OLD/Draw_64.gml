if (room == rm_intro) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2, "Press ENTER to start game");
} else {
	if (paused) {
		if (!surface_exists(paused_surf)) {
			if (paused_surf == -1) {
				instance_deactivate_all(true);
			}
			paused_surf = surface_create(room_width, room_height);
			surface_set_target(paused_surf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
		} else {
			draw_surface(paused_surf, 0, 0);
			draw_set_alpha(0.5);
			draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
			draw_set_alpha(1);
			draw_set_halign(fa_center);
			draw_text_transformed_colour(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 2, "PAUSED\n\nClick \"R\" to restart game\nClick \"P\" to resume game", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
			draw_set_halign(fa_left);
		}
	} else {
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_rectangle(0, 0, room_width, 50, false);

		draw_set_color(c_white);
		draw_sprite_ext(spr_player_lives, -1, 10, 10, 0.06, 0.06, 0, c_white, 1);
		draw_text(30, 25, "X " + string(obj_player.hp));
	}
	
	draw_self();

}