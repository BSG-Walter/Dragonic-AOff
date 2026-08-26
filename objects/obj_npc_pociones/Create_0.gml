/// @description  Estado inicial

hostil = false;
desc = "¡Hola, tengo las mejores pociones!";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 7;
vecIndices[0] = 141;
vecIndices[1] = 142;
vecIndices[2] = 143;
vecIndices[3] = 218;
vecIndices[4] = 219;
vecIndices[5] = 220;
vecIndices[6] = 221;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
