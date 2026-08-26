/// @description  Estado inicial

hostil = false;
desc = "Bienvenido a mi humilde puesto de minería y herrería";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 2;
vecIndices[0] = 154;
vecIndices[1] = 158;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
