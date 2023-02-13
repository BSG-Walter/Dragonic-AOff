/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index, image_index, x + xstart, y + ystart);
draw_sprite(obj_pj.sprCabeza, 0, x + 18, y + 18);
draw_set_font(fnt_Vedrana_7_bold);
draw_set_color(c_silver);
draw_set_halign(fa_center);
draw_text(x + 34, y + 4, string(obj_pj.nivel));
draw_text(x + 27, y + 18, "XP: " + string(floor(obj_pj.experiencia / obj_pj.expLvl[obj_pj.nivel] * 100)) + "%");

if (!panelActivo) exit;

draw_text(x + 4, y + 34, "Experiencia: " + string(obj_pj.experiencia) + "/" + string(obj_pj.expLvl[obj_pj.nivel]));
draw_text(x + 4, y + 34 + 10, "Fuerza: " + string(obtenerAtributoFuerzaPJ()));
draw_text(x + 4, y + 34 + 20, "Agilidad: " + string(obtenerAtributoAgilidadPJ()));
draw_text(x + 4, y + 34 + 30, "Inteligencia: " + string(obj_pj.atributos[2]));
draw_text(x + 4, y + 34 + 40, "Carisma: " + string(obj_pj.atributos[3]));
draw_text(x + 4, y + 34 + 50, "Constitución: " + string(obj_pj.atributos[4]));
    
// Clase:

// 0 = Arquero
// 1 = Asesino
// 2 = Bardo
// 3 = Cazador
// 4 = Clerigo
// 5 = Druida
// 6 = Guerrero
// 7 = Mago
// 8 = Paladin    
    
clase = "";
    
switch (obj_pj.clase) {
    case 0:
        clase = "Arquero";
        break;
    case 1:
        clase = "Asesino";
        break;
    case 2:
        clase = "Bardo";
        break;
    case 3:
        clase = "Cazador";
        break;
    case 4:
        clase = "Clérigo";
        break;
    case 5:
        clase = "Druida";
        break;
    case 6:
        clase = "Guerrero";
        break;
    case 7:
        clase = "Mago";
        break;
    case 8:
        clase = "Paladín";
        break;
}
    
draw_text(x + 4, y + 90, "Clase: " + clase);
    
var totalMatados = obj_pj.ciudadanosMatados + obj_pj.criminalesMatados;
    
draw_text(x + 4, y + 104, "Personas matadas: " + string(totalMatados));
draw_text(x + 4, y + 114, "Ciudadanos matados: " + string(obj_pj.ciudadanosMatados));
draw_text(x + 4, y + 124, "Criminales matados: " + string(obj_pj.criminalesMatados));