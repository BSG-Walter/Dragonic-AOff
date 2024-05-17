/// @description  Vuelve a la posición original

switch (caso) {
    case 0:
        __view_set( e__VW.XView, 0, get_render_x() - (pixHor) );
        __view_set( e__VW.WView, 0, get_render_width() - (pixHor) );
        __view_set( e__VW.YView, 0, get_render_y() - (pixVer) );
        __view_set( e__VW.HView, 0, get_render_height() - (pixVer) );
        break;
    case 1:
        __view_set( e__VW.XView, 0, get_render_x() + (pixHor) );
        __view_set( e__VW.WView, 0, get_render_width() + (pixHor) );
        __view_set( e__VW.YView, 0, get_render_y() + (pixVer) );
        __view_set( e__VW.HView, 0, get_render_height() + (pixVer) );
        break;      
}

if (movimientos < maxMovimientos) {
    movimientos++;
    alarm[0] = 1;
} else {
    instance_destroy();
}

