/// @description Insert description here
// You can write your code in this editor
if (!visible || obj_tecla_hechizos.visible) exit;
obj_inventario.visible = true;
obj_mover_inventario.visible = true;
obj_hechizos.visible = false;
obj_cambiar_vista_hechizos.visible = false;
obj_tecla_T.visible = true;
obj_tecla_lanzar.visible = false;
obj_tecla_U.image_index = 0;
alarm[0] = 1;