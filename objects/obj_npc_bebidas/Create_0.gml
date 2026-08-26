/// @description  Estado inicial

hostil = false;
desc = "¡Bienvenido a mi taberna, viajero!";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 4;
vecIndices[0] = 116;
vecIndices[1] = 117;
vecIndices[2] = 118;
vecIndices[3] = 119;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
