/// @description  Estado inicial

hostil = false;
desc = "Ofrezco resistentes armaduras por un precio justo";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    indiceNpc[i] = -1;
    nombreNpc[i] = "Vacío";
}

nroIndices = 19;
vecIndices[0] = 85;
vecIndices[1] = 72;
vecIndices[2] = 73;
vecIndices[3] = 74;
vecIndices[4] = 212; // Nueva
vecIndices[5] = 213; // Nueva
vecIndices[6] = 75;
vecIndices[7] = 76;
vecIndices[8] = 77;
vecIndices[9] = 214; // Nueva
vecIndices[10] = 83;
vecIndices[11] = 84;
vecIndices[12] = 215; // Nueva
vecIndices[13] = 78;
vecIndices[14] = 79;
vecIndices[15] = 80;
vecIndices[16] = 81;
vecIndices[17] = 82;
vecIndices[18] = 216; // Nueva


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
