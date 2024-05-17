/// @description  Control general

// Control posición

if (visible) {
	
	if (x >= get_render_x() + anchoV) {
		x -= anchoV;
	} else if (x <= get_render_x()) {
	    x += anchoV;
	}

	if (y >= get_render_y() + altoV) {
	    y -= altoV;
		instance_create(get_render_x() + random(__view_get( e__VW.WView, 0 )), get_render_y() + random(__view_get( e__VW.HView, 0 )), obj_salpicadura);
	} else if (y <= get_render_y()) {
	    // y += altoV;
	}

	y += ySpd;
	x -= xSpd;

}