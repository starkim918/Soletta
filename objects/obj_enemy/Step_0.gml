if (hp <= 0) {
	life_status = 0;
}

if (life_status) {
	// do this stuff if the enemy is close enough to the player
	if (distance_to_object(obj_player) <= chase_distance or chasing) {
		if (alarm[0] <= 0) {
			alarm[0] = room_speed;
		}
		if (!chasing) {
			effect_create_above(ef_spark, x, y, 10, c_white);
			image_blend = c_red;
		}
		path_started = false;
		chasing = true;
		path_end();
		if (obj_player.x < x) {
			image_xscale = -abs(image_xscale);
		} else {
			image_xscale = abs(image_xscale);
		}

		// move enemy towards player, but not too close to the player
		if (instance_exists(obj_player) && distance_to_object(obj_player) > too_close_to_player) {
		    //move_towards_point(obj_player.x, obj_player.y, spd);
			x_dist = abs(spd * cos(point_direction(x, y, obj_player.x, obj_player.y)));
			y_dist = abs(spd * sin(point_direction(x, y, obj_player.x, obj_player.y)));
			
			if (obj_player.x < x) {
				x_dist = -x_dist;
			}
			if (obj_player.y < y) {
				y_dist = -y_dist;
			}
			
			if (!place_meeting(x + x_dist, y + y_dist, obj_wall)) {
				move_towards_point(obj_player.x, obj_player.y, spd);
			}
		} else if (instance_exists(obj_player) && distance_to_object(obj_player) <= too_close_to_player) {
			speed = 0;	
		}
	} else {
		// have have the enemy be on their patrol route
		if (not path_started) {
			path_start(pt_enemy_patrol, spd, path_action_restart, false);
			path_started = true;
		}
	}
} else {
	speed = 0;		
}