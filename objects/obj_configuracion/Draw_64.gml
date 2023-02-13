/// @description Insert description here
// You can write your code in this editor
// Opciones

if (obj_configuracion.mostrado) {

    draw_sprite(spr_panel_opciones, 0, x + renderW - 26, y + 36);
    
    if (obj_opciones.opcionTechos) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 11);
    }
    
    if (obj_opciones.opcionArboles) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 27);
    }
    
    if (obj_opciones.opcionVibracion) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 43);
    }
    
    if (obj_opciones.opcionAnimacionAgua) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 59);
    }
    
    if (obj_opciones.opcionParticulas) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 75);
    }
    
    if (obj_opciones.opcionNubes) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 91);
    }
    
    if (obj_opciones.opcionPeces) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 107);
    }
    
    if (obj_opciones.opcionOptimizarCiudades) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 123);
    }
    
    if (obj_opciones.opcionInsigniaPionero) {
        draw_sprite(spr_tick, 0, x + renderW - 119, y + 139);
    }
    
}