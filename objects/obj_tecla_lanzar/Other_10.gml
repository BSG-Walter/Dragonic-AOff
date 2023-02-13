/// @description Insert description here
// You can write your code in this editor
if (!obj_pj.muerto) {
    image_index = 1;
} else {
    var idINFO = instance_create(obj_pj.x, obj_pj.y, obj_INFO);
    idINFO.padre = obj_pj.id;
    idINFO.texto = "¡Estás muerto!";
}