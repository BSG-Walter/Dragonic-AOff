/// @description  Estado inicial

hostil = false;
desc = "¡Ropas pequeñas al mejor precio!";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
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
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
