/// @description  Tamaño pantalla

var relAspecto = RESOLUTION_WIDTH / RESOLUTION_HEIGHT;
var ancho = display_get_width();
var alto = display_get_height();

if (is_ingame_room()){
	set_render_resolution(get_render_width(), get_render_height())
}else{
	set_render_resolution(RESOLUTION_WIDTH, RESOLUTION_HEIGHT)
}

camera_set_view_border(view_camera[0], get_render_width()/2, get_render_height()/2);

/*

view_xview[0] = 0;
view_yview[0] = 0;
view_xview[1] = 0;
view_yview[1] = 0;
view_wview[0] = 600;
view_hview[0] = 280;
view_wview[1] = 600;
view_hview[1] = 80;

*/

if (alto * relAspecto <= ancho) {
    surface_resize(application_surface, alto * relAspecto, alto);
} else {
    surface_resize(application_surface, ancho, ancho / relAspecto);
}

/* */
/*  */
