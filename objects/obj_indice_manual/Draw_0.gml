/// @description  Dibujo

if (obj_ayuda.mostrado) {
    draw_set_alpha(0.75);
    draw_sprite(sprite_index, 0, get_render_x() + get_render_width() * 0.5 - 192, get_render_y() + get_render_height() * 0.5 + 108);
    draw_set_alpha(1);
}

