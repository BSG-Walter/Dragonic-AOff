/// @description  Cambio el alpha del agua

if (instance_number(obj_pausa) == 0 && is_ingame_room()) {

    if (opcionAnimacionAgua) {
    
        __background_set( e__BG.Index, 1, bck_agua_2 );
        obj_control_animacion_agua.alarm[0] = 300;
    
        if (opcionPeces) {
            repeat(5) {
                instance_create(get_render_x() + random(get_render_width()), get_render_y() + random(get_render_height()), obj_pez);
            }
        }
        
    }
    
    if (opcionParticulas) {
        repeat(25) {
            instance_create(get_render_x() + random(get_render_width()), get_render_y() + random(get_render_height()), obj_particula);
        }
		if (obj_pj.direccion == 1)
			crearLluvia(cantidadGotasDeLluvia, 0, 140);
		else if (obj_pj.direccion == 2 || obj_pj.direccion == 3)
			crearLluvia(cantidadGotasDeLluvia, 300, 140);
		else
			crearLluvia(cantidadGotasDeLluvia, 0, 0);
			
    }
    
    if (opcionNubes) {
        instance_create(0, 0, obj_nubes);
    }

}

