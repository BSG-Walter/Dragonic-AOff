/// @description  dibujarItemInv(idItem, offY, posicion)
/// @param idItem
/// @param  offY
/// @param  posicion
function dibujarItemInv(argument0, argument1, argument2) {

	if (indiceInv[argument0] != -1) {
	    draw_sprite(spr_items, indiceInv[argument0], x + 136 + argument2, y + renderH + 40 + argument1);
	    draw_text(x + 152 + argument2, y + renderH + 28 + argument1, string(cantInv[argument0]));
    
	    if (equipadoInv[argument0]) {
	        draw_sprite(spr_cruz_equipado, 0, x + 136 + argument2, y + renderH + 40 + argument1);
	    }
    
	    if (posSeleccionado == argument0) {
			if (obj_mover_inventario.moviendoItem)
				draw_sprite(spr_borde_inv_moviendo, 0, x + 136 + argument2, y + renderH + 40 + argument1);
			else
				draw_sprite(spr_borde_inv, 0, x + 136 + argument2, y + renderH + 40 + argument1);
	    }
    
	    if (obj_pj.atacaConArco && obj_pj.armaEnInv == argument0) {
	        draw_set_halign(fa_left);
	        draw_set_color(c_yellow);
	        draw_text(x + 122 + argument2, y + renderH + 8 + argument1, "U");
	        draw_set_color(c_white);
	        draw_set_halign(fa_right);
	    }
	}



}
