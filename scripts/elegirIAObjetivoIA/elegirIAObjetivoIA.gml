/// @description  elegirIAObjetivoIA(recursivo)
/// @param recursivo

function elegirIAObjetivoIA(argument0) {
	
	distanciaMinima = room_width * room_height;
	IDIAdistanciaMinima = -1;
	cantIAEnView = 0;
	cantInmovilizados = 0;
	
	for (var i = 0; i < obj_opciones.maxBots; ++i) {
	    inmovilizados[i] = -1;
	}
	
	with (obj_persona) {
		// Ignorar al propio bot, bots muertos y aliados
		if (id == other.id || muerto) continue;
		if (room == rm_arena) {
			if (other.pk == pk) continue;
		}
		var _nueva_distancia = point_distance(x, y, other.x, other.y);
		
		if (_nueva_distancia <= 450) {
			other.cantIAEnView++;
			
			if (inmovilizado) {
				other.inmovilizados[other.cantInmovilizados] = id;
	            other.cantInmovilizados++;
			}
			
			// Si es el primero en chequear lo dejamos por default
			if (other.IDIAdistanciaMinima == -1) {
				other.IDIAdistanciaMinima = id;
				other.distanciaMinima = _nueva_distancia;
				continue;
			}
			
			// Priorizamos si el bot esta inmovilizado sobre la distancia
			if (!inmovilizado && other.IDIAdistanciaMinima.inmovilizado) continue;
			if (inmovilizado && !other.IDIAdistanciaMinima.inmovilizado) {
				other.IDIAdistanciaMinima = id;
				other.distanciaMinima = _nueva_distancia;
				continue;
			}
			
			// Por ultimo, al mas cercano
			if (_nueva_distancia < other.distanciaMinima) {
				other.IDIAdistanciaMinima = id;
				other.distanciaMinima = _nueva_distancia;
			}
		}
	}
	
	
	if (IDIAdistanciaMinima == -1 && (pk != obj_pj.pk || pk)) return -1;
	
	if (obj_pj.muerto || !obj_pj.inmovilizado || (pk && obj_pj.pk) || !enemigo) {
	    return IDIAdistanciaMinima;
	} else {
	    if (cantInmovilizados > 0) {
	        var rand = random(cantInmovilizados);
	        if (rand > (cantInmovilizados - (cantInmovilizados * 0.5))) {
	            return -1;
	        } else {
	            var idRet = -1;
	            for (var i = 0; i < cantInmovilizados; i++) {
	                if (inmovilizados[i].pk != pk) {
	                    idRet = inmovilizados[i];
	                    break;
	                }
	            }    
        
	            if (idRet == -1) {
	                var IARandInmo = floor(random(cantInmovilizados));
	                if (IARandInmo >= 0) {
	                    return inmovilizados[IARandInmo];
	                } else {
	                    return inmovilizados[0];
	                }
	            } else {
	                return idRet;
	            }
	        }
	    } else {
	        return -1;
	    }
	}
}
