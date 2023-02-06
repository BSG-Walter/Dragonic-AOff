// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function daniarPj(danoTotal, envenena){
	idDano = instance_create(obj_pj.x, obj_pj.y - 41, obj_efecto_dano);
    idDano.dano = danoTotal;
    idDano.padre = obj_pj.id;
	
	reproducirSonido(snd_golpeRecibido, false, false);
	vibrarPantalla();
        
	vibrarJoystick(danoTotal / obj_pj.saludMax, 30);
			
	if (obj_pj.salud - danoTotal >= 1) {
        
		obj_pj.salud -= danoTotal;
            
		if (envenena && !obj_pj.envenenado) {
		    if (random(10) > 8) {
				obj_pj.envenenado = true;
			    obj_pj.veneno = veneno;
			    obj_pj.alarm[8] = 1;
			    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
			    idINFO.padre = obj_pj.id;
			    idINFO.texto = "¡Envenenado!";
			    idINFO.color = c_lime;
		    }
		}
            
	} else {
	    muertePJ();
	}
}