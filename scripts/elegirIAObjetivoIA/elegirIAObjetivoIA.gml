/// @description  elegirIAObjetivoIA(recursivo)
/// @param recursivo

function elegirIAObjetivoIA(argument0) {
	
	//chequeamos los bots enemigos cercanos Y le damos prioridad si estan inmo
	distancia_minima = room_width * room_height;
	IDIAdistanciaMinima = -1
	cantIAEnView = 0
	with (obj_persona) {
		if (pk == other.pk) continue;
		
		var _nueva_distancia = distance_to_object(other);
		
		if (_nueva_distancia <= 250){
			cantIAEnView++;
			if ((_nueva_distancia < other.distancia_minima) || (inmovilizado && !other.IDIAdistanciaMinima.inmovilizado)) {
			    other.IDIAdistanciaMinima = id;
			    other.distanciaMinima = _nueva_distancia;
			}
		}
	}
	
	if (IDIAdistanciaMinima == -1 && (pk != obj_pj.pk || pk)) return -1; //si no hay otras ias cerca y es enemigo de nuestro pj, le decimos que ataque al pj directamente
	
	if (!obj_pj.inmovilizado || (pk && obj_pj.pk) || !enemigo) {

	    return IDIAdistanciaMinima;

	} else {

	    // Pueden darse varios casos:
    
	    /*
    
	    La IA es PK y el PJ ciuda
	    LA IA es ciuda y el PJ PK
	    Ambos son PK
    
	    */
    
	    cantInmovilizados = 0;
    
	    inmovilizados[0] = -1;
	    inmovilizados[1] = -1;
	    inmovilizados[2] = -1;
	    inmovilizados[3] = -1;
	    inmovilizados[4] = -1;
	    inmovilizados[5] = -1;
	    inmovilizados[6] = -1;
	    inmovilizados[7] = -1;
	    inmovilizados[8] = -1;
	    inmovilizados[9] = -1;

	    with (obj_persona) {
			
	        if (id == other.id || !inmovilizado) continue;
			
			if (other.pk || pk != other.pj){
				other.inmovilizados[other.cantInmovilizados] = id;
	            other.cantInmovilizados++;
			}
	    }
    
	    if (cantInmovilizados > 0) {
	        var rand = random(cantInmovilizados);
	        if (rand > (cantInmovilizados - (cantInmovilizados * 0.5))) { // Hay una probabilidad de que la IA ataque al PJ
	            return -1; // Ataca al PJ
	        } else {
            
	            var idRet = -1;
        
				//prioriza atacar a los que son enemigos
	            for (var i = 0; i < cantInmovilizados; i++) {
	                if (inmovilizados[i].pk != pk) {
	                    idRet = inmovilizados[i];
	                    break;
	                }
	            }    
        
	            if (idRet == -1) {
	                var IARandInmo = floor(random(cantInmovilizados));
	                if (IARandInmo >= 0) {
	                    return inmovilizados[IARandInmo]; // Si es pk ataca a otra IA pk random
	                } else {
	                    return inmovilizados[0];
	                }
	            } else {
	                return idRet; // La IA tiene preferencia por IAs enemigas
	            }
            
	        }
	    } else {
	        return -1; // Ataca al PJ si es el unico inmovilizado
	    }
    
	}












}
