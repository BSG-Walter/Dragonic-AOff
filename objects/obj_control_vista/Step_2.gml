/// @description Insert description here
// You can write your code in this editor
var _offset_x = 0
var _offset_y = 0
if (instance_exists(obj_pj)) {

	if (vibrando){
		_offset_x = floor(random_range(-5, 5))
		_offset_y = floor(random_range(-5, 5))
	}
    global.render_x = obj_pj.x - (get_render_width() / 2) + _offset_x;
    global.render_y = obj_pj.y - (get_render_height() / 2) + _offset_y;

    camera_set_view_pos(view_camera[0], global.render_x, global.render_y);
}

global.inventario_x = global.render_x;
global.inventario_y = global.render_y + get_render_height();

//actualizamos todo lo que dependa de la posicion actual de la camara.
with(obj_parent_botones){
	x = xstart + global.render_x
	y = ystart + global.inventario_y
}