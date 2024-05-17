/// @description  Vibra

if (caso == 0) {
    caso = 1;
} else {
    caso = 0;
}

switch (caso) {
    case 0:
        __view_set( e__VW.XView, 0, get_render_x() + (pixHor) );
        __view_set( e__VW.WView, 0, get_render_width() + (pixHor) );
        __view_set( e__VW.YView, 0, get_render_y() + (pixVer) );
        __view_set( e__VW.HView, 0, get_render_height() + (pixVer) );
        break;
    case 1:
        __view_set( e__VW.XView, 0, get_render_x() - (pixHor) );
        __view_set( e__VW.WView, 0, get_render_width() - (pixHor) );
        __view_set( e__VW.YView, 0, get_render_y() - (pixVer) );
        __view_set( e__VW.HView, 0, get_render_height() - (pixVer) );
        break;      
}

alarm[1] = intervalo;


