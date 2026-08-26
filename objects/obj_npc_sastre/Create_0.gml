/// @description  Estado inicial

hostil = false;
desc = "¡Hola forastero! Confeccionamos las mejores ropas de la zona";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
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
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
