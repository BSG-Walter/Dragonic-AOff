/// @description  Dibujo

if (obj_ayuda.mostrado) {
    draw_set_alpha(0.85);
    draw_sprite(sprite_index, pagina, get_render_x() + __view_get( e__VW.WView, 0 ) * 0.5, get_render_y() + __view_get( e__VW.HView, 0 ) * 0.5);
    draw_set_alpha(1);
}

