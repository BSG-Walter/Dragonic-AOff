/// @description  Control general

image_angle++;

if (subiendo) {
    image_alpha += 0.005;
} else {
    image_alpha -= 0.005;
}

if (image_alpha >= 0.45 || image_alpha <= 0) {
    alarm[0] = 1;
}

// Control posición

var anchoV = __view_get( e__VW.WView, 0 );
var altoV = __view_get( e__VW.HView, 0 );

if (x >= get_render_x() + anchoV) {
    x -= anchoV;
} else if (x <= get_render_x()) {
    x += anchoV;
}

if (y >= get_render_y() + altoV) {
    y -= altoV;
} else if (y <= get_render_y()) {
    y += altoV;
}

