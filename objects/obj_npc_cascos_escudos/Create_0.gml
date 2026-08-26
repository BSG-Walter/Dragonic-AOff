/// @description  Estado inicial

hostil = false;
desc = "¡Tengo los cascos y escudos que necesitas, viajero!";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 3;
vecIndices[0] = 93;
vecIndices[1] = 98;
vecIndices[2] = 99;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
