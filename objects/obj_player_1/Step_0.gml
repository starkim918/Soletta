/// @description Insert description here
// You can write your code in this editor

 

if (room == rm_space_lvl1) {

 

    // left/right arrows rotate image
    if (keyboard_check(vk_left)) {
        image_angle += turnRate;
    }
    if (keyboard_check(vk_right)) {
        image_angle -= turnRate;
    }

 

    // up/down arrows accelerate or stop
    if (keyboard_check(vk_up)) {
        motion_add(image_angle+90, thrustAmt);
    } 
    if (keyboard_check(vk_down)) {
        motion_add(image_angle+90, -thrustAmt);
    }

 

    // screen wrapping
    if (x > room_width) {
        motion_set(image_angle, 0);
        x = room_width-1;
    } else if (x < 0) {
        motion_set(image_angle, 0);
        x = 1;
    }
    if (y > room_height+50) {
        y = 0;
    } else if (y < 0) {
        y = room_height+50;
    }

 

} else {
    var keyup = keyboard_check(vk_up) + keyboard_check(ord("W"));
    var keydown = keyboard_check(vk_down) + keyboard_check(ord("S"));
    var keyleft = keyboard_check(vk_left) + keyboard_check(ord("A"));
    var keyright = keyboard_check(vk_right) + keyboard_check(ord("D"));

 

    var hmove = keyright - keyleft;
    var vmove = keydown - keyup;

 

    shoot_cooldown-=1;

 


    /*
    if (text_disapear and (x != obj_spawnpoint.x or y != obj_spawnpoint.y)) {
        if (textbox != noone) {
            instance_destroy(textbox);
            textbox = noone;
        }
    }
    */

 


    if (hp <= 0) {
        life_status = 0;
		room_goto(rm_intro);
    }

 

    image_xscale = sign(image_xscale)*image_xscale;
    if (not shooting && life_status) {
        if (hmove != 0) {
            image_xscale = hmove*image_xscale;
            sprite_index = spr_player_armor_walk_new;
        } else {
            if (sign(mouse_x - x) != 0) {
                image_xscale = sign(mouse_x - x)*image_xscale;
            }
            sprite_index = spr_player_armor_idle_new;
        }
    }

 


    if (life_status) {
        hsp = hmove * spd;
        vsp = vmove * spd;
    }

 

    if (place_meeting(x + hsp, y, obj_wall)) {
        while (not place_meeting(x + sign(hsp), y, obj_wall)) {
            x += sign(hsp);    
        }
        hsp = 0;
    }

 

    if (x + hsp + sprite_width/2 > 0 and x + hsp + sprite_width/2 < room_width) {
        x += hsp;
    }

 

    if (place_meeting(x, y + vsp, obj_wall)) {
        while (not place_meeting(x, y + sign(vsp), obj_wall)) {
            y += sign(vsp);    
        }
        vsp = 0;
    }

 

    if (y + vsp - sprite_height/2 > 0 and y + vsp + sprite_height/2 < room_height) {
        y += vsp;
    }
}