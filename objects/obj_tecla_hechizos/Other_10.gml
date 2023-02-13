/// @description Insert description here
// You can write your code in this editor
if (!visible || obj_tecla_inventario.visible) exit;
obj_inventario.visible = false;
obj_mover_inventario.visible = false;
obj_cambiar_vista_hechizos.visible = true;
obj_hechizos.visible = true;
obj_tecla_T.visible = false;
obj_tecla_lanzar.visible = true;
obj_tecla_U.image_index = 2;
alarm[0] = 1;