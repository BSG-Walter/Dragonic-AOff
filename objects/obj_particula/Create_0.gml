/// @description  Estado inicial

image_angle = random(360);
direction = image_angle;
image_speed = 0;
image_index = floor(random(3));
speed = random_range(0.5, 1);
image_alpha = random(0.45);

subiendo = false;
alarm[0] = 1;

anchoV = get_render_width();
mitadAnchoV = anchoV/2;
altoV = get_render_height();
mitadAltoV = altoV/2;
