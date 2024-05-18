/// @description  Vuelve a la posición original

switch (caso) {
    case 0:
        set_render_x(get_render_x() - (pixHor));
        set_render_width(get_render_width() - (pixHor));
        set_render_y(get_render_y() - (pixVer));
        set_render_height( get_render_height() - (pixVer));
        break;
    case 1:
        set_render_x(get_render_x() + (pixHor));
        set_render_width(get_render_width() + (pixHor));
        set_render_y(get_render_y() + (pixVer));
        set_render_height(get_render_height() + (pixVer));
        break;      
}

if (movimientos < maxMovimientos) {
    movimientos++;
    alarm[0] = 1;
} else {
    instance_destroy();
}

