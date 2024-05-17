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

var anchoV = get_render_width();
var altoV = get_render_height();

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

