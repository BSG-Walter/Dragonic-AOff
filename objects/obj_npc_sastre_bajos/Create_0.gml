/// @description  Estado inicial

hostil = false;
desc = "¡Ropas pequeñas al mejor precio!";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    indiceNpc[i] = -1;
    nombreNpc[i] = "Vacío";
}

nroIndices = 6;
vecIndices[0] = 49;
vecIndices[1] = 50;
vecIndices[2] = 54;
vecIndices[3] = 56;
vecIndices[4] = 60;
vecIndices[5] = 59;

for (var i = 0; i < nroIndices; i++) {
    
    item = vecIndices[i];

    datosItem[0] = "";
    datosItem[1] = -1;
    datosItem[2] = -1;
    datosItem[3] = 0;
    datosItem[4] = 0;
    datosItem[5] = true; 
    datosItem[6] = true; 
    datosItem[7] = true; 
    datosItem[8] = true; 
    datosItem[9] = true; 
    datosItem[10] = true; 
    datosItem[11] = true; 
    datosItem[12] = true; 
    datosItem[13] = true; 
    datosItem[14] = "Vacío";
    
    datosItem = configurarItem(item);
    
    indiceNpc[i] = item;
    tipoNpc[i] = datosItem[0];
    cantNpc[i] = 1;
    equipadoNpc[i] = false;
    generoNpc[i] = datosItem[1];
    razaNpc[i] = datosItem[2];
    nroSkillNpc[i] = datosItem[3];
    skillRequeridoNpc[i] = datosItem[4];
    clase0ValidaNpc[i] = datosItem[5]; 
    clase1ValidaNpc[i] = datosItem[6]; 
    clase2ValidaNpc[i] = datosItem[7]; 
    clase3ValidaNpc[i] = datosItem[8]; 
    clase4ValidaNpc[i] = datosItem[9]; 
    clase5ValidaNpc[i] = datosItem[10]; 
    clase6ValidaNpc[i] = datosItem[11]; 
    clase7ValidaNpc[i] = datosItem[12]; 
    clase8ValidaNpc[i] = datosItem[13];
    nombreNpc[i] = datosItem[14];

}

