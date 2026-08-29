gml_pragma("global", "init_engine_settings();");

#macro RESOLUTION_WIDTH 600
#macro RESOLUTION_HEIGHT 360
#macro RENDER_WIDTH 600
#macro RENDER_HEIGHT 280
#macro INVENTARIO_WIDTH 120
#macro INVENTARIO_HEIGHT 80
#macro MAX_MULTITOUCH 5
// SKILL_FACTOR y RECURSO_FACTOR: escala con multiExp/multiOro. Base 20x (multi=1) = 1.0, 10x (0.5) = 0.5 mínimo, 100x (5) = 5.0.
#macro SKILL_FACTOR max(0.5, obj_opciones.multiExp)
#macro RECURSO_FACTOR max(0.5, obj_opciones.multiOro)

// Configuración de bots

#macro BOT_DRAW_CULL_MARGIN 80

// Tile grid
#macro TILE_SIZE 32

// Tile layers
#macro TILE_LAYER_GRASS 10000000
#macro TILE_LAYER_COAST 1000000
#macro TILE_LAYER_FLOORS 100000

// Timers
#macro SECOND 60

// Slots de inventario y hechizos
#macro MAX_SLOTS 20

// Índice base de hechizos (120–139)
#macro SPELL_INDEX_BASE 120

// Apuntado con mando (stick derecho)
#macro AIM_DEADZONE 0.25
#macro AIM_SENSITIVITY 6
#macro AIM_RETICLE_MAX_DIST 200
#macro AIM_RETICLE_CLAMP_MARGIN 8


function init_engine_settings() {
    layer_force_draw_depth(true, 0);
    draw_set_colour(c_black);
	init_ropas();
}

/// @description textoSkill(indice) - nombre del skill segun su indice
function textoSkill(indice) {
    switch (indice) {
        case 0: return "Magia";
        case 1: return "Tácticas de Combate";
        case 2: return "Combate con Armas";
        case 3: return "Meditar";
        case 4: return "Apuñalar";
        case 5: return "Talar";
        case 6: return "Defensa con Escudos";
        case 7: return "Pesca";
        case 8: return "Minería";
        case 9: return "Carpintería";
        case 10: return "Herrería";
        case 11: return "Domar Animales";
        case 12: return "Arquería";
        case 13: return "Combate sin Armas";
        case 14: return "Navegación";
        case 15: return "Sastrería";
        case 16: return "Comercio";
        case 17: return "Resistencia Mágica";
    }
    return "";
}
