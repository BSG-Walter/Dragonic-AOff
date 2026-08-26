/// @description  Estado inicial

hostil = false;
desc = "¡Hola muchacho! Bienvenido a mi humilde carpintería";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    indiceNpc[i] = -1;
    nombreNpc[i] = "Vacío";
}

nroIndices = 7;
vecIndices[0] = 21;
vecIndices[1] = 22;
vecIndices[2] = 23;
vecIndices[3] = 29;
vecIndices[4] = 30;
vecIndices[5] = 147;
vecIndices[6] = 157;

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
