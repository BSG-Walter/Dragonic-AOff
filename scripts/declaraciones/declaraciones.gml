gml_pragma("global", "init_engine_settings();");

function init_engine_settings() {
    layer_force_draw_depth(true, 0);
    draw_set_colour(c_black);
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro RESOLUTION_WIDTH 600
#macro RESOLUTION_HEIGHT 360
#macro RENDER_WIDTH 600
#macro RENDER_HEIGHT 280
#macro INVENTARIO_WIDTH 120
#macro INVENTARIO_HEIGHT 80
#macro MAX_MULTITOUCH 5