/// @description  Estado inicial

hostil = false;
desc = "¡Hola! ¡Tengo las mejores manzanas de la zona, al mejor precio!";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 10;
vecIndices[0] = 101;
vecIndices[1] = 102;
vecIndices[2] = 103;
vecIndices[3] = 104;
vecIndices[4] = 105;
vecIndices[5] = 110;
vecIndices[6] = 106;
vecIndices[7] = 109;
vecIndices[8] = 108;
vecIndices[9] = 107;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
