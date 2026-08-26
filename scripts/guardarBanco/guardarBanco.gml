/// @description  guardarBanco() 
function guardarBanco() {
    
	for (var i = 0; i < 20; i++) {
	    write("obj_banco", "indiceNpc[" + string(i) + "]", obj_banco.slots[i].indice);
	    write("obj_banco", "cantNpc[" + string(i) + "]", obj_banco.slots[i].cant);
	    writeS("obj_banco", "nombreNpc[" + string(i) + "]", obj_banco.slots[i].nombre);
	}



}
