/// @description  Dibujo la interfaz

draw_sprite(tl_interfaz, 0, x, renderH);

// Oro

draw_sprite(spr_boton_oro, 0, x + 10, (y + renderH) + 57);

// Dopas

draw_set_color(c_white);
draw_set_halign(fa_center);
if (obj_pj.dopaAgilidad > 0) {
	draw_sprite_ext(spr_items, 218, x + 88, y + 27, 0.75, 0.75, 0, -1, 1);
	draw_set_font(fnt_Vedrana_5_bold);
	draw_text_color(x + 88, y, string(floor(obj_pj.dopaAgilidad * 25)) + "%", c_yellow, c_yellow, c_yellow, c_yellow, 1)
	draw_set_font(fnt_Vedrana_7_bold);
	if (obj_pj.tiempoDopa >= 80) draw_set_color(c_red);
	draw_text(x + 88, y + 9, string(obj_pj.tiempoDopaMax - obj_pj.tiempoDopa))
	if (obj_pj.dopaFuerza > 0) {
		draw_sprite_ext(spr_items, 219, x + 114, y + 27, 0.75, 0.75, 0, -1, 1);
		draw_set_font(fnt_Vedrana_5_bold);
		draw_text_color(x + 114, y, string(floor(obj_pj.dopaFuerza * 25)) + "%", c_lime, c_lime, c_lime, c_lime, 1)
		draw_set_font(fnt_Vedrana_7_bold);
		if (obj_pj.tiempoDopa >= 80) draw_set_color(c_red);
		draw_text(x + 114, y + 9, string(obj_pj.tiempoDopaMax - obj_pj.tiempoDopa))
	}	
} else if (obj_pj.dopaFuerza > 0) {
	draw_sprite_ext(spr_items, 219, x + 88, y + 27, 0.75, 0.75, 0, -1, 1);
	draw_set_font(fnt_Vedrana_5_bold);
	draw_text_color(x + 88, y, string(floor(obj_pj.dopaFuerza * 25)) + "%", c_lime, c_lime, c_lime, c_lime, 1)
	draw_set_font(fnt_Vedrana_7_bold);
	if (obj_pj.tiempoDopa >= 80) draw_set_color(c_red);		
	draw_text(x + 88, y + 9, string(obj_pj.tiempoDopaMax - obj_pj.tiempoDopa))
}
draw_set_halign(fa_left);
draw_set_color(c_white);

// Limpieza mundo

if (obj_limpieza_mundo.contando) {
    draw_set_halign(fa_right);
    draw_set_color(c_white);
    if (obj_limpieza_mundo.segundos > 0) {
        draw_text(x + renderW - 23, y + renderH - 16, "Limpieza de mundo en: " + string(obj_limpieza_mundo.segundos) + "s");
    } else {
        draw_text(x + renderW - 23, y + renderH - 16, "Limpiando mundo...");
    }
    draw_set_halign(fa_left);
} 

/// Dibujo flechas
draw_sprite(spr_flechas, 0, x + 70, y + renderH - 70); 
// Salud
dibujarBarra(x + 12, (y + renderH) + 14, obj_pj.salud, obj_pj.saludMax, colorVida);

// Maná
if (obj_pj.manaMax > 0) {
	dibujarBarra(x + 12, (y + renderH) + 24, obj_pj.mana, obj_pj.manaMax, colorMana);
}else{
	draw_sprite_ext(spr_barra_back, 0, x + 12, (y + renderH) + 24, 1, 1, 0, c_dkgray, 1 );
}

// Energía
dibujarBarra(x + 12, (y + renderH) + 34, obj_pj.energia, obj_pj.energiaMax, colorEnergia);

// Hambre

draw_set_font(fnt_Vedrana_6_bold);

dibujarBarraChica(x + 18, (y + renderH) + 44, obj_pj.hambre, obj_pj.hambreMax, colorHambre);
// Sed
dibujarBarraChica(x + 66, (y + renderH) + 44, obj_pj.sed, obj_pj.sedMax, colorSed);
// Oro

draw_set_font(fnt_Vedrana_7_bold);
draw_set_color(c_white);
draw_text(x + 45, (y + renderH) + 57, string(obj_pj.oro));

// Nombre de mapa y coordenadas

draw_set_font(fnt_Vedrana_6_bold);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_set_color(c_black);
draw_text(x + renderWMiddle, y + renderH - 2, nombreMapa + " - " + string(floor((obj_pj.x - 608) / 32) + 9) + " - " + string(floor((obj_pj.y - 400) / 32) + 7));

if (obj_mapas_mundo.mapas[room]) {
    draw_set_color(c_green);
} else {
    draw_set_color(c_silver);
}

draw_text(x + renderWMiddle - 1, y + renderH - 3, nombreMapa + " - " + string(floor((obj_pj.x - 608) / 32) + 9) + " - " + string(floor((obj_pj.y - 400) / 32) + 7));

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Mejora la visibilidad de los items que se tiran al piso
    
if (
(obj_inventario.tirando || itemTiradoVisible) ||
obj_inventario.tiraDeA1
) {
    
    draw_set_halign(fa_center);
    draw_set_font(fnt_Vedrana_11_bold);
    
    if (
    (itemTiradoVisible && obj_tecla_T.teclaApretada) || 
    obj_inventario.tiraDeA1
    ) {
        if (obj_inventario.posSeleccionado != -1) {
        
            for (var i = 0; i < obj_inventario.maximoInv; i++) {
                if (obj_inventario.posSeleccionado == i) {
                    break;
                }
            }
            
            draw_set_color(c_black);
            draw_text(x + renderWMiddle, y + renderH - 30, string(obj_inventario.cantInv[i])); 
            draw_set_color(c_white);
            draw_text(x + renderWMiddle- 1, y + renderH - 31, string(obj_inventario.cantInv[i])); 
            ultimaCantItemTirado = obj_inventario.cantInv[i];    
            
        }
    } else if (!itemTiradoVisible && obj_tecla_T.teclaApretada) {
        draw_set_color(c_black);
        draw_text(x + renderWMiddle, y + renderH - 30, string(ultimaCantItemTirado));
        draw_set_color(c_white);
        draw_text(x + renderWMiddle - 1, y + renderH - 31, string(ultimaCantItemTirado));
    }
    
    
    draw_set_color(c_black);
    draw_set_halign(fa_left);
    
    itemTiradoVisible = true;
    
    if (alarm[0] == -1 && obj_tecla_T.teclaApretada) {
        alarm[0] = 120;
    }
    
}