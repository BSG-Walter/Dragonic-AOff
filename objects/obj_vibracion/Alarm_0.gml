/// @description  Vibra

if (caso == 0) {
    caso = 1;
} else {
    caso = 0;
}

switch (caso) {
    case 0:
        set_render_x(get_render_x() + (pixHor));
        set_render_width(get_render_width() + (pixHor));
        set_render_y(get_render_y() + (pixVer));
        set_render_height(get_render_height() + (pixVer));
        break;
    case 1:
        set_render_x(get_render_x() - (pixHor));
        set_render_width(get_render_width() - (pixHor));
        set_render_y(get_render_y() - (pixVer));
        set_render_height(get_render_height() - (pixVer));
        break;      
}

alarm[1] = intervalo;


