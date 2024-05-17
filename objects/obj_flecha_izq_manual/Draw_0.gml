/// @description  Dibujo

if (obj_ayuda.mostrado) {
    draw_set_alpha(0.75);
    draw_sprite(spr_flecha_izq_manual, 0, get_render_x() + __view_get( e__VW.WView, 0 ) * 0.5 + 384 * 0.5 - 30, get_render_y() + __view_get( e__VW.HView, 0 ) * 0.5 + 216 * 0.5 - 2);
    draw_set_alpha(1);
}

