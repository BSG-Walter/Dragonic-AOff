/// @description  Control mouse
event_inherited()
if (!obj_inventario.visible) {

    var device = -1;

if (
    device_mouse_check_button(0, mb_left) ||
    device_mouse_check_button(1, mb_left) ||
    device_mouse_check_button(2, mb_left) ||
    device_mouse_check_button(3, mb_left) ||
    device_mouse_check_button(4, mb_left)
    ) {
    
        device = elegirDeviceLibre();
    
        if (device != -1) {
            if (device_mouse_check_button_pressed(device, mb_left) && position_meeting(device_mouse_x(device), device_mouse_y(device), self)) {
                obj_control_devices.devicesL[device] = true;
                if (!obj_pj.muerto) {
                    keyboard_key_press(ord("L"));
                    image_index = 1;
                } else {
                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                    idINFO.padre = obj_pj.id;
                    idINFO.texto = "¡Estás muerto!";
                }
                obj_control_devices.devicesL[device] = false;
            }
        }
    
    }else{
		keyboard_key_release(ord("L"));
		image_index = 0;
	}

}


