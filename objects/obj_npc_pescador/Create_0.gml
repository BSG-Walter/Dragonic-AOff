/// @description  Estado inicial

hostil = false;
desc = "¡Bienvenido al gremio de pescadores!";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 7;
vecIndices[0] = 111;
vecIndices[1] = 112;
vecIndices[2] = 113;
vecIndices[3] = 114;
vecIndices[4] = 115;
vecIndices[5] = 155;
vecIndices[6] = 156;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
