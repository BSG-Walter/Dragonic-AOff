gml_pragma("global", "init_engine_settings();");

#macro RESOLUTION_WIDTH 600
#macro RESOLUTION_HEIGHT 360
#macro RENDER_WIDTH 600
#macro RENDER_HEIGHT 280
#macro INVENTARIO_WIDTH 120
#macro INVENTARIO_HEIGHT 80
#macro MAX_MULTITOUCH 5
// SKILL_FACTOR y RECURSO_FACTOR: escala la prob. base de subir skills de forma natural/Escala los recursos de recoleccion.
// Base x20 = 1.0. x10 = 0.5 (mitad, mínimo), x40 = 2.0 (doble), x200 = 10.0, sin tope superior.
#macro SKILL_FACTOR max(0.5, obj_opciones.multiExp/20)
#macro RECURSO_FACTOR max(0.5, obj_opciones.multiOro/20)

function init_engine_settings() {
    layer_force_draw_depth(true, 0);
    draw_set_colour(c_black);

    // Mapeo global de sprites de armas y escudos
    global.sprArmas = array_create(256, -1);
    global.sprArmas[0] = spr_arma_1;
    global.sprArmas[1] = spr_arma_1;
    global.sprArmas[2] = spr_arma_2;
    global.sprArmas[3] = spr_arma_3;
    global.sprArmas[4] = spr_arma_3;
    global.sprArmas[5] = spr_arma_4;
    global.sprArmas[6] = spr_arma_5;
    global.sprArmas[7] = spr_arma_6;
    global.sprArmas[8] = spr_arma_6;
    global.sprArmas[9] = spr_arma_7;
    global.sprArmas[10] = spr_arma_8;
    global.sprArmas[11] = spr_arma_9;
    global.sprArmas[12] = spr_arma_10;
    global.sprArmas[13] = spr_arma_11;
    global.sprArmas[14] = spr_arma_12;
    global.sprArmas[15] = spr_arma_13;
    global.sprArmas[16] = spr_arma_14;
    global.sprArmas[17] = spr_arma_15;
    global.sprArmas[18] = spr_arma_16;
    global.sprArmas[19] = spr_arma_17;
    global.sprArmas[20] = spr_arma_18;
    global.sprArmas[21] = spr_arma_19;
    global.sprArmas[22] = spr_arma_20;
    global.sprArmas[23] = spr_arma_21;
    global.sprArmas[24] = spr_arma_22;
    global.sprArmas[25] = spr_arma_23;
    global.sprArmas[26] = spr_arma_24;
    global.sprArmas[27] = spr_arma_25;
    global.sprArmas[227] = spr_arma_26;

    global.sprEscudos = array_create(128, -1);
    global.sprEscudos[98] = spr_escudo_1;
    global.sprEscudos[99] = spr_escudo_2;
    global.sprEscudos[100] = spr_escudo_3;
}

/// @description obtenerSpriteArma(indice)
function obtenerSpriteArma(indice) {
    if (indice >= 0 && indice < array_length(global.sprArmas)) {
        return global.sprArmas[indice];
    }
    return -1;
}

/// @description obtenerSpriteEscudo(indice)
function obtenerSpriteEscudo(indice) {
    if (indice >= 0 && indice < array_length(global.sprEscudos)) {
        return global.sprEscudos[indice];
    }
    return -1;
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