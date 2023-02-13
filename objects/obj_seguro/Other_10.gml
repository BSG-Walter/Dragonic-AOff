/// @description Insert description here
// You can write your code in this editor
var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
    
if (activo) {
    idINFO.texto = "Seguro desactivado";
    activo = false;
} else {
    idINFO.texto = "Seguro activado";
    activo = true;
}