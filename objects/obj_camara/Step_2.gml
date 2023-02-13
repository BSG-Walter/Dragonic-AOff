/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pj) {
	camera_set_view_pos(view_camera[0], obj_pj.x - offsetW, obj_pj.y - offsetH);
}
//x = camera_get_view_x(view_camera[0]);
//y = camera_get_view_y(view_camera[0]);

with (obj_gui_parent){
	x = camera_get_view_x(view_camera[0]) + xstart;
	y = camera_get_view_y(view_camera[0]) + ystart;
}