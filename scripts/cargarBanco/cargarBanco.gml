/// @description  cargarBanco()
function cargarBanco() {

	for (var i = 0; i < 20; i++) {
		var _idx = read("obj_banco", "indiceNpc[" + string(i) + "]", -1);
		var _cant = read("obj_banco", "cantNpc[" + string(i) + "]", 0);
		var _nombre = readS("obj_banco", "nombreNpc[" + string(i) + "]", "Vacío");
		obj_banco.slots[i] = crearSlotNpc(_idx, _cant, _nombre);
	}



}
