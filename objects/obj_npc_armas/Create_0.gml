/// @description  Estado inicial

hostil = false;
desc = "Bienvenido, tengo algunas armas que pueden ayudarte en tus viajes";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
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
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
