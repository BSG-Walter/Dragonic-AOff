/// @description  Estado inicial

hostil = false;
desc = "¡Hola muchacho! Bienvenido a mi humilde carpintería";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
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
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
