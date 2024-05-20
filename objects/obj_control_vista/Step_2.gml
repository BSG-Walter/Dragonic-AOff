/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_pj)) {

    global.render_x = obj_pj.x - get_render_width() / 2;
    global.render_y = obj_pj.y - get_render_height() / 2;

    camera_set_view_pos(view_camera[0], global.render_x, global.render_y);
}else{
    //global.render_x = 0
    //global.render_y = 0
}

global.inventario_x = global.render_x;
global.inventario_y = global.render_y + get_render_height();

//actualizamos todo lo que dependa de la posicion actual de la camara.
with(obj_parent_botones){
	x = xstart + global.render_x
	y = ystart + global.inventario_y
}