/// @description  Estado inicial

hostil = false;
desc = "Bienvenido, tengo algunas armas que pueden ayudarte en tus viajes";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    indiceNpc[i] = -1;
    nombreNpc[i] = "Vacío";
}

nroIndices = 9;
vecIndices[0] = 0;
vecIndices[1] = 1;
vecIndices[2] = 2;
vecIndices[3] = 7;
vecIndices[4] = 8;
vecIndices[5] = 9;
vecIndices[6] = 10;
vecIndices[7] = 11;
vecIndices[8] = 12;

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
