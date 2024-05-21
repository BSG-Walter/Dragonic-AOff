/// @description  Control mouse
event_inherited()


var device = elegirDeviceLibre();

if (device != -1) {
    if (device_mouse_check_button_pressed(device, mb_left) && position_meeting(device_mouse_x(device), device_mouse_y(device), self)) {
        
        obj_control_devices.devicesL[device] = true;
            
        var barcaORunaSeleccionada = false;

        if (obj_inventario.seleccionado != -1) {
            
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                if (obj_inventario.seleccionado == obj_inventario.indiceInv[i]) {
                    break;
                }
            }
                
            if (obj_inventario.tipoInv[i] == "barca" || obj_inventario.tipoInv[i] == "runa") {
                barcaORunaSeleccionada = true;
            }
                
        }
            
        if (!obj_pj.muerto || barcaORunaSeleccionada) {
                
			usarItem();
            if (obj_inventario.visible) {
                image_index = 1;
            } else {
                image_index = 3;
            }
            
        }
            
        obj_control_devices.devicesL[device] = false;
            
    }else{
	    if (obj_inventario.visible) {
			image_index = 0;
	    } else {
	        image_index = 2;
	    }
	}
}



