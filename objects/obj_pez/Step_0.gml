/// @description  Control general

if (!esPescado) {
    if (sube) {
        direction += giro;
    } else {
        direction -= giro;
    }
}

image_angle = direction;

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

// Control velocidad

if (avanza) {
    if (speed < 1.85) {
        speed += 0.1; 
    }
} else {
    if (speed > 0.75) {
        speed -= 0.05;
    }
}

if (esPescado) {
    path_speed = 1.85;
    persistent = false;
}

