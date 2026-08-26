/// @description  Estado inicial

hostil = false;
desc = "¡Bienvenido, aprendíz! Tengo los mejores báculos y sombreros";

// Doble clic

dobleClic = false;

// Inventario

for (var i = 0; i < 20; i++) {
    slots[i] = crearSlotNpc(-1, 0, "Vacío");
}

nroIndices = 4;
vecIndices[0] = 18;
vecIndices[1] = 19;
vecIndices[2] = 96;
vecIndices[3] = 145;

for (var i = 0; i < nroIndices; i++) {
    item = vecIndices[i];
    slots[i] = crearSlotNpc(item, 1, configurarItem(item).nombre);
}
