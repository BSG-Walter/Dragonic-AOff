/// @description  Control mouse

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
    
        if (device_mouse_check_button_pressed(device, mb_left)) {
            
            // Seleccionar hechizo

            if (!dobleClic) {
            
                if (visible && !obj_pj.muerto && !moviendoHechizo) {
                    
                    var posX = 0;
                    var posY = 0;
                        
                    if (
                    device_mouse_x(device) >= global.inventario_x + 121 &&
                    device_mouse_x(device) <= global.inventario_x + 120 + 320 &&
                    device_mouse_y(device) >= global.inventario_y + 8 &&
                    device_mouse_y(device) <= global.inventario_y + 7 + 64
                    ) {
                    
                        obj_control_devices.devicesL[device] = true;
                    
                        obj_skills_libres.mostrado = false;
                    
                        // Doble clic
                                
                        dobleClic = true;
                        if (alarm[1] == -1) {
                            alarm[1] = 15;
                        }
                        
                        var posX = device_mouse_x(device);
                        var posY = device_mouse_y(device);
                        
                        posX = posX - global.inventario_x - 120;
                        posY = posY - global.inventario_y - 7;
                        
                        var posItem = 0;
                        
                        if (posY <= 32) {
                        
                            // Arriba
                            
                            var i = 0;
                            
                            repeat (5) {
                                if (posX >= 64 * (i) && posX < (i + 1) * 64) {
                                    posItem = i;
									posSeleccionado = i;
                                    break;
                                }
                                
                                i++;
                            }
                            
                        } else {
                        
                            // Abajo
                            
                            var i = 0;
                            
                            repeat (5) {
                                if (posX >= 64 * (i) && posX < (i + 1) * 64) {
                                    posItem = i + 5;
									posSeleccionado = posItem;
                                    break;
                                }
                                
                                i++;
                            }
                            
                        }
                        
                        if (!primerPanel) {
                            posItem += 10;
                        }
                        
                        // TRABAJO CON EL HECHIZO
                        
                        if (hechizos[posItem].indice != -1) {
                            if (hechizos[posItem].indice == seleccionado) {
                                seleccionado = -1;
                                obj_pj.atacaConHechizo = false;
                            } else {
                                seleccionado = hechizos[posItem].indice;
                                posDobleClic = posItem;
                                alarm[0] = 15;
                            }
                        } else {
                            seleccionado = -1;
                            obj_pj.atacaConHechizo = false;
                        }
                        
                        obj_control_devices.devicesL[device] = false;
                        
                    }
                
                } else if (visible && moviendoHechizo) {
                
                    dobleClic = false;
                    alarm[1] = -1;
                
                    seleccionado = -1;
                    
                    var posX = 0;
                    var posY = 0;
                        
                    if (
                    device_mouse_x(device) >= global.inventario_x + 121 &&
                    device_mouse_x(device) <= global.inventario_x + 120 + 320 &&
                    device_mouse_y(device) >= global.inventario_y + 8 &&
                    device_mouse_y(device) <= global.inventario_y + 7 + 64
                    ) {
                    
                        obj_control_devices.devicesL[device] = true;
                
                        moviendoHechizo = false;
                    
                        obj_skills_libres.mostrado = false;
                    
                        var posX = device_mouse_x(device);
                        var posY = device_mouse_y(device);
                        
                        posX = posX - global.inventario_x - 120;
                        posY = posY - global.inventario_y - 7;
                        
                        var posItem = 0;
                        
                        if (posY <= 32) {
                        
                            // Arriba
                            
                            var i = 0;
                            
                            repeat (5) {
                                if (posX >= 64 * (i) && posX < (i + 1) * 64) {
                                    posItem = i;
                                    break;
                                }
                                
                                i++;
                            }
                            
                        } else {
                        
                            // Abajo
                            
                            var i = 0;
                            
                            repeat (5) {
                                if (posX >= 64 * (i) && posX < (i + 1) * 64) {
                                    posItem = i + 5;
                                    break;
                                }
                                
                                i++;
                            }
                            
                        }
                        
                        if (!primerPanel) {
                            posItem += 10;
                        }
                        
                        // TRABAJO CON EL HECHIZO
                        
                        if (hechizos[posHechizoAMover].indice != -1) {
                        
                            var _aux = hechizos[posItem];
                            hechizos[posItem] = hechizos[posHechizoAMover];
                            hechizos[posHechizoAMover] = _aux;
                            
                        }
                        
                        obj_control_devices.devicesL[device] = false;
                        
                    }
                    
                }
            
            } else {
                
                dobleClic = false;
                alarm[1] = -1;
            
                // Localizo el hechizo

                if (visible) {
                    
                    if (!obj_tecla_T.teclaApretada) {
                    
                        var posX = 0;
                        var posY = 0;
                            
                        if (
                        device_mouse_x(device) >= global.inventario_x + 121 &&
                        device_mouse_x(device) <= global.inventario_x + 120 + 320 &&
                        device_mouse_y(device) >= global.inventario_y + 8 &&
                        device_mouse_y(device) <= global.inventario_y + 7 + 64
                        ) {
                        
                            obj_skills_libres.mostrado = false;
                        
                            var posX = device_mouse_x(device);
                            var posY = device_mouse_y(device);
                            
                            posX = posX - global.inventario_x - 120;
                            posY = posY - global.inventario_y - 7;
                            
                            var posItem = 0;
                            
                            if (posY <= 32) {
                            
                                // Arriba
                                
                                var i = 0;
                                
                                repeat (5) {
                                    if (posX >= 64 * (i) && posX < (i + 1) * 64) {
                                        posItem = i;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            } else {
                            
                                // Abajo
                                
                                var i = 0;
                                
                                repeat (5) {
                                    if (posX >= 64 * (i) && posX < (i + 1) * 64) {
                                        posItem = i + 5;
                                        break;
                                    }
                                    
                                    i++;
                                }
                                
                            }
                            
                            if (!primerPanel) {
                                posItem += 10;
                            }
                            
                            // TRABAJO CON EL HECHIZO
                            
                            seleccionado = -1;
                            
                            if (hechizos[posItem].indice != -1) {
                                if (posItem == posDobleClic) {
                                    moviendoHechizo = true;
                                    posHechizoAMover = posItem;
                                }
                            }
                            
                        }
                    
                    }
                
                }                
            
            }
            
        }
        
    }

}

