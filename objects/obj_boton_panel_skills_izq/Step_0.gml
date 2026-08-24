/// @description  Control general / control mouse

if (obj_skills_libres.mostrado) {

    var hor = (global.render_x + get_render_width() * 0.5) - 64 + 98;
    var ver = (global.render_y + get_render_height() * 0.5) - 107;
    
    x = hor;
    y = ver + global.skillOffsetY[indice];
    
    // early-out si no hay nada que hacer (ahorra 5 checks*18 botones)
    if (obj_pj.skills[indice] <= 0 || obj_pj.skills[indice] <= skillsIniciales) exit;
    
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
                if (obj_pj.skills[indice] > 0 && obj_pj.skills[indice] > skillsIniciales) {
                    obj_pj.skills[indice]--;
                    obj_pj.skillsLibres++;
                }
                obj_control_devices.devicesL[device] = false;
            }
            
        }
    
    }
    
}

