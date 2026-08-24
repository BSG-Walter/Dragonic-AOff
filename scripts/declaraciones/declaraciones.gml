gml_pragma("global", "init_engine_settings();");

function init_engine_settings() {
    layer_force_draw_depth(true, 0);
    draw_set_colour(c_black);
}

#macro RESOLUTION_WIDTH 600
#macro RESOLUTION_HEIGHT 360
#macro RENDER_WIDTH 600
#macro RENDER_HEIGHT 280
#macro INVENTARIO_WIDTH 120
#macro INVENTARIO_HEIGHT 80
#macro MAX_MULTITOUCH 5
// SKILL_FACTOR: escala la prob. base 35% de subir skills de forma natural.
// Base x20 = 1.0. x10 = 0.5 (mitad, mínimo), x40 = 2.0 (doble), x200 = 10.0, sin tope superior.
// Uso: if (random(1) < 0.35 * SKILL_FACTOR) { /* subir skill */ }
#macro SKILL_FACTOR max(0.5, obj_opciones.multiExp/20)
// RECURSO_FACTOR: escala cantidad de recursos de trabajos (talar, minería, pesca) según multiOro.
// Base x20 = 1.0. x10 = 0.5, x40 = 2.0, sin tope superior.
#macro RECURSO_FACTOR max(0.5, obj_opciones.multiOro/20)