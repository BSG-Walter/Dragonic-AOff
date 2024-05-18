/// @description  elegirIAObjetivoIA(recursivo)
/// @param recursivo

function elegirIAObjetivoIA(argument0) {
	
	//chequeamos los bots enemigos cercanos Y le damos prioridad si estan inmo
	distanciaMinima = room_width * room_height;
	IDIAdistanciaMinima = -1
	cantIAEnView = 0
	cantInmovilizados = 0;
	
	for (var i = 0; i < MAX_BOTS; ++i) {
	    inmovilizados[i] = -1
	}
	
	with (obj_persona) {
		//Buscamos a algun bot enemigo, si los 2 son ciudas pasamos a verificar el siguiente bot
		if (id == other.id || (!other.pk && !pk)) continue;
			
		//var _nueva_distancia = distance_to_object(other);
		var _nueva_distancia = point_distance(x,y,other.x,other.y)
		
		if (_nueva_distancia <= 300){
			other.cantIAEnView++;
			
			if (inmovilizado){
				other.inmovilizados[other.cantInmovilizados] = id;
	            other.cantInmovilizados++;
			}
			
			//si es el primero en chequear lo dejamos por default
			if (other.IDIAdistanciaMinima == -1){
				other.IDIAdistanciaMinima = id;
				other.distanciaMinima = _nueva_distancia;
				continue;
			}
			
			//priorizamos si son enemigos naturales, los pks haran alianza temporal hasta que se acaben los ciudas, luego se atacan entre si
			if (other.IDIAdistanciaMinima.pk != other.pk && other.pk == pk) continue;
			
			//luego priorizamos si el bot esta inmo sobre la distancia
			if (!inmovilizado && other.IDIAdistanciaMinima.inmovilizado) continue;
			
			//por ultimo, al mas cercano
			if (_nueva_distancia > other.distanciaMinima) continue;
			
			other.IDIAdistanciaMinima = id;
			other.distanciaMinima = _nueva_distancia;
		}
		
	}
	
	if (IDIAdistanciaMinima == -1 && (pk != obj_pj.pk || pk)) return -1; //si no hay otras ias cerca y es enemigo de nuestro pj, le decimos que ataque al pj directamente
	
	if (obj_pj.muerto || !obj_pj.inmovilizado || (pk && obj_pj.pk) || !enemigo) {

	    return IDIAdistanciaMinima;

	} else {

	    // Pueden darse varios casos:
    
	    /*
    
	    La IA es PK y el PJ ciuda
	    LA IA es ciuda y el PJ PK
	    Ambos son PK
    
	    */
    
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
