// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Gets
function get_inventario_x(){
	return __view_get(e__VW.XView, 1);
}

function get_inventario_y(){
	return __view_get(e__VW.YView, 1);
}

function get_inventario_width(){
	return INVENTARIO_WIDTH;
}

function get_inventario_height(){
	return INVENTARIO_HEIGHT;
}

function get_render_x(){
	return __view_get(e__VW.XView, 0);
}

function get_render_y(){
	return __view_get(e__VW.YView, 0);
}

function get_render_width(){
	return RENDER_WIDTH;
}

function get_render_height(){
	return RENDER_HEIGHT;
}

//Sets
function set_inventario_x(value){
	__view_set(e__VW.XView, 1, value);
}

function set_inventario_y(value){
	__view_set(e__VW.YView, 1, value);
}

function set_inventario_width(value){
	__view_set(e__VW.WView, 1, value);
}

function set_inventario_height(value){
	__view_set(e__VW.HView, 1, value);
}

function set_inventario_resolution(width, height){
	set_inventario_width(width)
	set_inventario_height(height);
}

function set_render_x(value){
	__view_set(e__VW.XView, 0, value);
}

function set_render_y(value){
	__view_set(e__VW.YView, 0, value);
}

function set_render_width(value){
	__view_set(e__VW.WView, 0, value);
}

function set_render_height(value){
	__view_set(e__VW.HView, 0, value);
}

function set_render_resolution(width, height){
	set_render_width(width)
	set_render_height(height);
}