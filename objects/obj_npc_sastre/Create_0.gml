/// @description  Estado inicial

hostil = false;
desc = "¡Hola forastero! Confeccionamos las mejores ropas de la zona";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    indiceNpc[i] = -1;
    nombreNpc[i] = "Vacío";
}

nroIndices = 16;
vecIndices[0] = 45;
vecIndices[1] = 46;
vecIndices[2] = 47;
vecIndices[3] = 48;
vecIndices[4] = 71;
vecIndices[5] = 53;
vecIndices[6] = 51;
vecIndices[7] = 52;
vecIndices[8] = 57;
vecIndices[9] = 55;
vecIndices[10] = 58;
vecIndices[11] = 62;
vecIndices[12] = 63;
vecIndices[13] = 64;
vecIndices[14] = 65;
vecIndices[15] = 159;

for (var i = 0; i < nroIndices; i++) {
    
    item = vecIndices[i];

    datosItem = configurarItem(item);
    
    indiceNpc[i] = item;
    tipoNpc[i] = datosItem.tipo;
    cantNpc[i] = 1;
    equipadoNpc[i] = false;
    generoNpc[i] = datosItem.genero;
    razaNpc[i] = datosItem.raza;
    nroSkillNpc[i] = datosItem.nroSkill;
    skillRequeridoNpc[i] = datosItem.skillReq;
    clase0ValidaNpc[i] = datosItem.clases[0]; 
    clase1ValidaNpc[i] = datosItem.clases[1]; 
    clase2ValidaNpc[i] = datosItem.clases[2]; 
    clase3ValidaNpc[i] = datosItem.clases[3]; 
    clase4ValidaNpc[i] = datosItem.clases[4]; 
    clase5ValidaNpc[i] = datosItem.clases[5]; 
    clase6ValidaNpc[i] = datosItem.clases[6]; 
    clase7ValidaNpc[i] = datosItem.clases[7]; 
    clase8ValidaNpc[i] = datosItem.clases[8];
    nombreNpc[i] = datosItem.nombre;

}
