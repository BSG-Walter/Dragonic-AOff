/// @description  Estado inicial

hostil = false;
desc = "Bienvenido a mi pequeño negocio... Tengo algunos hechizos que podrían interesarte";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 20;
vecIndices[0] = 120;
vecIndices[1] = 125;
vecIndices[2] = 121;
vecIndices[3] = 126;
vecIndices[4] = 127;
vecIndices[5] = 128;
vecIndices[6] = 134;
vecIndices[7] = 135;
vecIndices[8] = 123;
vecIndices[9] = 122;
vecIndices[10] = 132;
vecIndices[11] = 129;
vecIndices[12] = 133;
vecIndices[13] = 124;
vecIndices[14] = 136;
vecIndices[15] = 139;
vecIndices[16] = 130;
vecIndices[17] = 138;
vecIndices[18] = 137;
vecIndices[19] = 131;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
