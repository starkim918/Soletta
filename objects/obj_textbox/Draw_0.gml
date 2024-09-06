/// @description Insert description here
// You can write your code in this editor

// draw textbox
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_sprite(spr_textbox, 0, x, y);

// draw text
draw_set_font(fnt_textbox);
draw_text_ext(x, y, text, str_height, box_width);






