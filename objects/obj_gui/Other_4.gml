/// @description  Quito el background 2

__background_set( e__BG.Visible, 2, false );

if (is_ingame_room()) {
    nombreMapa = obtenerNombreMapa(room, -1, -1);
}

render_width = get_render_width()
render_height = get_render_height()