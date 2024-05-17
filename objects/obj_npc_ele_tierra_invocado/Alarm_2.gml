/// @description  Ataque a Persona

if (personaRoom != -1 && instance_exists(personaRoom)) {

    if (
    personaRoom.enemigo &&
    !personaRoom.muerto &&
    (personaRoom.x >= get_render_x() && (personaRoom.x <= get_render_x() + get_render_width())) &&
    (personaRoom.y >= get_render_y() && (personaRoom.y <= get_render_y() + get_render_height()))
    ) {
    
        // Si la IA está viva y está dentro de la view
        
        var distanciaX = 0;
        var distanciaY = 0; 
        
        if (x > personaRoom.x) {
            distanciaX = x - personaRoom.x;
        } else if (x < personaRoom.x) {
            distanciaX = personaRoom.x - x;
        }
        
        if (y > personaRoom.y) {
            distanciaY = y - personaRoom.y;
        } else if (y < personaRoom.y) {
            distanciaY = personaRoom.y - y;
        }
        
        if (
        distanciaX <= (get_render_x() + get_render_width()) * 0.5 &&
        distanciaY <= (get_render_y() + get_render_height()) * 0.5
        ) {
        
            if (!paralizado) {
        
                var valido = false;
            
                if (inmovilizado) {
                    switch (direccion) {
                        case 0:
                            if (
                            (personaRoom.x >= x - 16 && personaRoom.x <= x + 16) && 
                            personaRoom.y > y
                            ) {
                                valido = true;
                            }
                            break;
                        case 1:
                            if (
                            (personaRoom.x >= x - 16 && personaRoom.x <= x + 16) && 
                            personaRoom.y < y
                            ) {
                                valido = true;
                            }
                            break;
                        case 2:
                            if (
                            (personaRoom.y >= y - 16 && personaRoom.y <= y + 16) && 
                            personaRoom.x < x
                            ) {
                                valido = true;
                            }
                            break;
                        case 3:
                            if (
                            (personaRoom.y >= y - 16 && personaRoom.y <= y + 16) && 
                            personaRoom.x > x
                            ) {
                                valido = true;
                            }
                            break;
                    }
                    
                } else {
                    valido = true;
                }
                
                if (valido) {
                    var idHechizo = instance_create(personaRoom.x, personaRoom.y, obj_inmovilizar);
                    idHechizo.padre = personaRoom.id;
                    personaRoom.inmovilizado = true;
					personaRoom.alarm[7] = 170;
                    personaRoom.alarm[4] = 1800; // 30 Segundos
                    reproducirSonido(snd_inmovilizar, false, false);
					
					// Palabras mágicas
        
			        dicePalabrasMagicas = true;
			        palabrasMagicas = "Är Prop s'uo";
			        alarm[9] = 180;
					
                }
                
            }
        
        }
    
    }

}

alarm[2] = floor(random_range(intervaloAtaque * 0.85, intervaloAtaque * 1.15));

