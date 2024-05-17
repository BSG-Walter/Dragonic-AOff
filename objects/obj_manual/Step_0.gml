/// @description  Control general

if (obj_ayuda.mostrado) {
    visible = true;
    x = get_render_x() + __view_get( e__VW.WView, 0 ) * 0.5;
    y = get_render_y() + __view_get( e__VW.HView, 0 ) * 0.5;
} else {
    visible = false;
    pagina = 0;
}

