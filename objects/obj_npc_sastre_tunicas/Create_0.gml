/// @description  Estado inicial

hostil = false;
desc = "¡Bienvenido! Tenemos las mejores túnicas de la zona";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 8;
vecIndices[0] = 39;
vecIndices[1] = 33;
vecIndices[2] = 34;
vecIndices[3] = 35;
vecIndices[4] = 36;
vecIndices[5] = 40;
vecIndices[6] = 37;
vecIndices[7] = 38;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
