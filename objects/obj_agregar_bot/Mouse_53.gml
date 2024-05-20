/// @description  Control general / Control mouse

x = global.render_x + get_render_width() - 2;
y = global.render_y + 50;

pk_x_center = x - 12
pk_y_center = y + 12
ciuda_x_center = pk_x_center
ciuda_y_center = pk_y_center + 24

var device = -1;
    
if (
device_mouse_check_button(0, mb_left) ||
device_mouse_check_button(1, mb_left) ||
device_mouse_check_button(2, mb_left) ||
device_mouse_check_button(3, mb_left) ||
device_mouse_check_button(4, mb_left)
) {

    device = elegirDeviceLibre();

    if (device != -1) {
    
        if (device_mouse_check_button_pressed(device, mb_left) && point_distance(device_mouse_x(device), device_mouse_y(device),pk_x_center, pk_y_center) <= 12) {
        
            obj_control_devices.devicesL[device] = true;
			
            spawnear_pk = false;
			if (room == rm_arena){
				instance_create(obj_pj.x, obj_pj.y + 32, obj_persona);
			}
            
            obj_control_devices.devicesL[device] = false;
            
        }
		
		if (device_mouse_check_button_pressed(device, mb_left) && point_distance(device_mouse_x(device), device_mouse_y(device),ciuda_x_center, ciuda_y_center) <= 12) {
        
            obj_control_devices.devicesL[device] = true;
			
            spawnear_pk = true;
			if (room == rm_arena){
				instance_create(obj_pj.x, obj_pj.y + 32, obj_persona);
			}
            
            obj_control_devices.devicesL[device] = false;
            
        }
        
    }

}