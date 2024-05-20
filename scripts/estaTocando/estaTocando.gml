// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function esta_tocando(_id){
    return position_meeting(device_mouse_x(0), device_mouse_y(0), _id) ||
    position_meeting(device_mouse_x(1), device_mouse_y(1), _id) ||
    position_meeting(device_mouse_x(2), device_mouse_y(2), _id) || 
    position_meeting(device_mouse_x(3), device_mouse_y(3), _id) || 
    position_meeting(device_mouse_x(4), device_mouse_y(4), _id)
}