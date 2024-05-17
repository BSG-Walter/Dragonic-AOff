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
		instance_create(get_render_x() + random(get_render_width()), get_render_y() + random(get_render_height()), obj_salpicadura);
	} else if (y <= get_render_y()) {
	    // y += altoV;
	}

	y += ySpd;
	x -= xSpd;

}