/// @description  Estado inicial

image_speed = 0;
instance_create_depth(x, y - 32, 0, obj_bloqueo_arboles);
instance_create_depth(x + 32, y - 32, 0, obj_bloqueo_arboles);
instance_create_depth(x - 32, y - 32, 0, obj_bloqueo_arboles);
instance_create_depth(x - 64, y - 32, 0, obj_bloqueo_arboles);

