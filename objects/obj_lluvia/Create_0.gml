/// @description  Estado inicial

image_speed = 0;
image_index = irandom(3);
ySpd = random_range(6, 8);
xSpd = random_range(2, 4);
depth = -294;

alarm[0] = 1;

visible = esMapaDescubierto();

anchoV = get_render_width();
altoV = get_render_height();