/// @description  Cambiar dirección

if (obj_opciones.opcionAnimacionAgua) {

	velocidadH+=0.001 * direccionX
    __background_set( e__BG.HSpeed, 1, velocidadH);   
	
    if (abs(velocidadV) < 0.15) {
		velocidadV+= 0.00025 * direccionY
		__background_set( e__BG.VSpeed, 1, velocidadV);
	}
}