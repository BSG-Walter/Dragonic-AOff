/// @description  Estado inicial

intervaloMin = 8000;

if (is_ingame_room()) {
    intervaloMin = intervaloMin / setearIntervaloCreacionIA(room);
}

if (obj_control_opciones.simularHorarios) {

    // Actualiza los intervalos según la hora
    
    var hora = current_hour;
    
    if (hora >= 1 && hora < 3) {
        intervaloMin = 10800;
    } else if (hora >= 3 && hora < 5) {
        intervaloMin = 14400;
    } else if (hora >= 5 && hora < 8) {
        intervaloMin = 18000;
    } else if (hora >= 8 && hora < 12) {
        intervaloMin = 14400;
    } else if (hora >= 12 && hora < 14) {
        intervaloMin = 10800;
    } else if (hora >= 14 && hora < 16) {
        intervaloMin = 7200;
    } else if (hora >= 16 && hora < 19) {
        intervaloMin = 3600;
    } else if (hora >= 19 && hora < 21) {
        intervaloMin = 7200;
    } else if ((hora >= 21) || (hora >= 0 && hora < 1)) {
        intervaloMin = 10800;
    }
    
}
intervaloMin-= (intervaloMin*(obj_pj.nivel/obj_pj.nivelMax))*0.5
intervaloMax = intervaloMin + intervaloMin / 2.5;

valido = true;
alarm[0] = floor(random_range(intervaloMin, intervaloMax) * 0.5);
alarm[1] = floor(alarm[0] * random_range(0.5, 0.75));


