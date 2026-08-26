/// @description  Estado inicial

hostil = false;
desc = "Bienvenido a mi pequeño negocio... Tengo algunos hechizos que podrían interesarte";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    indiceNpc[i] = -1;
    nombreNpc[i] = "Vacío";
}

nroIndices = 20;
vecIndices[0] = 120;
vecIndices[1] = 125;
vecIndices[2] = 121;
vecIndices[3] = 126;
vecIndices[4] = 127;
vecIndices[5] = 128;
vecIndices[6] = 134;
vecIndices[7] = 135;
vecIndices[8] = 123;
vecIndices[9] = 122;
vecIndices[10] = 132;
vecIndices[11] = 129;
vecIndices[12] = 133;
vecIndices[13] = 124;
vecIndices[14] = 136;
vecIndices[15] = 139;
vecIndices[16] = 130;
vecIndices[17] = 138;
vecIndices[18] = 137;
vecIndices[19] = 131;

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
