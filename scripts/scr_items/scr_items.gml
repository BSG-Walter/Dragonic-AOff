function scr_items(){

}

function init_ropas(){
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

    global.sprRopa = array_create(256, -1);
    global.sprRopa[33] = spr_tunica_1;
    global.sprRopa[34] = spr_tunica_2;
    global.sprRopa[35] = spr_tunica_3;
    global.sprRopa[36] = spr_tunica_4;
    global.sprRopa[37] = spr_tunica_5;
    global.sprRopa[38] = spr_tunica_6;
    global.sprRopa[39] = spr_tunica_7;
    global.sprRopa[40] = spr_tunica_8;
    global.sprRopa[43] = spr_tunica_11;
    global.sprRopa[44] = spr_tunica_12;
    global.sprRopa[68] = spr_ropa_24;
    global.sprRopa[69] = spr_ropa_25;
    global.sprRopa[70] = spr_ropa_26;
    global.sprRopa[72] = spr_armadura_1;
    global.sprRopa[73] = spr_armadura_2;
    global.sprRopa[75] = spr_armadura_4;
    global.sprRopa[76] = spr_armadura_5;
    global.sprRopa[83] = spr_armadura_12;
    global.sprRopa[164] = spr_armada_1;
    global.sprRopa[165] = spr_armada_13;
    global.sprRopa[166] = spr_armada_2;
    global.sprRopa[167] = spr_armada_14;
    global.sprRopa[168] = spr_armada_3;
    global.sprRopa[169] = spr_armada_15;
    global.sprRopa[170] = spr_legion_1;
    global.sprRopa[171] = spr_legion_13;
    global.sprRopa[172] = spr_legion_2;
    global.sprRopa[173] = spr_legion_14;
    global.sprRopa[174] = spr_legion_3;
    global.sprRopa[175] = spr_legion_15;
    global.sprRopa[176] = spr_armada_4;
    global.sprRopa[177] = spr_armada_16;
    global.sprRopa[178] = spr_armada_5;
    global.sprRopa[179] = spr_armada_17;
    global.sprRopa[180] = spr_armada_6;
    global.sprRopa[181] = spr_armada_18;
    global.sprRopa[182] = spr_legion_4;
    global.sprRopa[183] = spr_legion_16;
    global.sprRopa[184] = spr_legion_5;
    global.sprRopa[185] = spr_legion_17;
    global.sprRopa[186] = spr_legion_6;
    global.sprRopa[187] = spr_legion_18;
    global.sprRopa[188] = spr_armada_7;
    global.sprRopa[189] = spr_armada_19;
    global.sprRopa[190] = spr_armada_8;
    global.sprRopa[191] = spr_armada_20;
    global.sprRopa[192] = spr_armada_9;
    global.sprRopa[193] = spr_armada_21;
    global.sprRopa[194] = spr_legion_7;
    global.sprRopa[195] = spr_legion_19;
    global.sprRopa[196] = spr_legion_8;
    global.sprRopa[197] = spr_legion_20;
    global.sprRopa[198] = spr_legion_9;
    global.sprRopa[199] = spr_legion_21;
    global.sprRopa[200] = spr_armada_10;
    global.sprRopa[201] = spr_armada_22;
    global.sprRopa[202] = spr_armada_11;
    global.sprRopa[203] = spr_armada_23;
    global.sprRopa[204] = spr_armada_12;
    global.sprRopa[205] = spr_armada_24;
    global.sprRopa[206] = spr_legion_10;
    global.sprRopa[207] = spr_legion_22;
    global.sprRopa[208] = spr_legion_11;
    global.sprRopa[209] = spr_legion_23;
    global.sprRopa[210] = spr_legion_12;
    global.sprRopa[211] = spr_legion_24;
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

/// @description obtenerSpriteRopa(indice)
function obtenerSpriteRopa(indice) {
    if (indice >= 0 && indice < array_length(global.sprRopa)) {
        return global.sprRopa[indice];
    }
    return -1;
}


/// @description crearSlotInv(indice, cant, equipado)
function crearSlotInv(_indice, _cant, _equipado) {
    if (_indice == -1) {
        return {
            indice: -1,
            cant: 0,
            equipado: false,
            tipo: "",
            genero: -1,
            raza: -1,
            nroSkill: 0,
            skillReq: 0,
            clases: [true, true, true, true, true, true, true, true, true],
            nombre: "Vacío"
        };
    }

    var _datos = configurarItem(_indice);
    return {
        indice: _indice,
        cant: _cant,
        equipado: _equipado,
        tipo: _datos.tipo,
        genero: _datos.genero,
        raza: _datos.raza,
        nroSkill: _datos.nroSkill,
        skillReq: _datos.skillReq,
        clases: _datos.clases,
        nombre: _datos.nombre
    };
}

/// @description crearSlotNpc(indice, cant, nombre)
function crearSlotNpc(_indice, _cant, _nombre) {
    return {
        indice: _indice,
        cant: _cant,
        nombre: _nombre
    };
}

/// @description crearHechizo(indice, nombre, tipo, mana, energia, skill, efectoMin, efectoMax, palabrasMagicas)
function crearHechizo(_indice, _nombre, _tipo, _mana, _energia, _skill, _efectoMin, _efectoMax, _palabrasMagicas) {
    return {
        indice: _indice,
        nombre: _nombre,
        tipo: _tipo,
        mana: _mana,
        energia: _energia,
        skill: _skill,
        efectoMin: _efectoMin,
        efectoMax: _efectoMax,
        palabrasMagicas: _palabrasMagicas
    };
}

/// @description hechizoVacio()
function hechizoVacio() {
    return crearHechizo(-1, "", "", 0, 0, 0, 0, 0, "");
}