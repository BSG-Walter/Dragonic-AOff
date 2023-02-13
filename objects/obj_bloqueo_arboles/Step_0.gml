/// @description  Control general / control mouse

if (activo) {
    if (!obj_pj.trabajando) {
        activo = false;
    }
}

if (!tocandoPantalla()) exit;

device = elegirDeviceLibre();

if (device == -1 || !device_mouse_check_button_pressed(device, mb_left)) exit;

if (position_meeting(device_mouse_x(device), device_mouse_y(device), self)) {

    obj_control_devices.devicesL[device] = true;
    
    if (obj_pj.puedeMoverse && !obj_flecha_abajo.apretada && !obj_flecha_arriba.apretada && !obj_flecha_izq.apretada && !obj_flecha_der.apretada && obj_pj.trabajoEquipado) {
        if (obj_pj.trabajoActual == 147) {
            if (obj_pj.trabajoEnInv != -1) {
                if (
                place_meeting(x - 32, y, obj_pj) ||
                place_meeting(x + 32, y, obj_pj) ||
                place_meeting(x, y - 32, obj_pj) ||
                place_meeting(x, y + 32, obj_pj)
                ) {
                
                    obj_pj.trabajaMineria = false;
                    obj_pj.trabajaFragua = false;
                    obj_pj.trabajaPesca = false;
                    obj_pj.trabajaTala = true;
                    obj_pj.trabajando = true;
                    activo = true;
                    
                    obj_skills_libres.mostrado = false;
                    
                    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
                    idINFO.texto = "Trabajando";
                    idINFO.padre = obj_pj.id;
                    
                    obj_pj.alarm[11] = 60;
                    
                }
            }    
        }    
    }
    
    obj_control_devices.devicesL[device] = false;
    
}

