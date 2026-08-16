draw_set_font(fnt_main);
draw_set_color(c_black);

// Texto centralizado
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(display_get_gui_width() / 2, 40,global.points);

// Texto alinhado à esquerda
draw_set_halign(fa_left);
draw_text(40, 40, "HIGHEST: " + string(global.highest_score));