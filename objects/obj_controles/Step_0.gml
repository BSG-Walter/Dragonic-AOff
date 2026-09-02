/// @description Insert description here
// You can write your code in this editor

obj_pj.upKey = keyboard_check(key_up) || obj_flecha_arriba.apretada || (gamepad_axis_value(0,gp_axislv) < -0.4)
obj_pj.downKey = keyboard_check(key_down) || obj_flecha_abajo.apretada || (gamepad_axis_value(0,gp_axislv) > 0.4)
obj_pj.leftKey = keyboard_check(key_left) || obj_flecha_izq.apretada || (gamepad_axis_value(0,gp_axislh) < -0.4)
obj_pj.rightKey = keyboard_check(key_right) || obj_flecha_der.apretada || (gamepad_axis_value(0,gp_axislh) > 0.4)

var _aimH = gamepad_axis_value(0, gp_axisrh);
var _aimV = gamepad_axis_value(0, gp_axisrv);
if (abs(_aimH) > AIM_DEADZONE || abs(_aimV) > AIM_DEADZONE) {
    if (!obj_pj.aimActive) {
        obj_pj.aimX = obj_pj.x;
        obj_pj.aimY = obj_pj.y;
        obj_pj.aimActive = true;
    }
    obj_pj.aimX += _aimH * AIM_SENSITIVITY;
    obj_pj.aimY += _aimV * AIM_SENSITIVITY;
    var _minX = global.render_x + AIM_RETICLE_CLAMP_MARGIN;
    var _maxX = global.render_x + get_render_width() - AIM_RETICLE_CLAMP_MARGIN;
    var _minY = global.render_y + AIM_RETICLE_CLAMP_MARGIN;
    var _maxY = global.render_y + get_render_height() - AIM_RETICLE_CLAMP_MARGIN;
    obj_pj.aimX = clamp(obj_pj.aimX, _minX, _maxX);
    obj_pj.aimY = clamp(obj_pj.aimY, _minY, _maxY);
    var _distAim = point_distance(obj_pj.x, obj_pj.y, obj_pj.aimX, obj_pj.aimY);
    if (_distAim > AIM_RETICLE_MAX_DIST) {
        var _dirAim = point_direction(obj_pj.x, obj_pj.y, obj_pj.aimX, obj_pj.aimY);
        obj_pj.aimX = obj_pj.x + lengthdir_x(AIM_RETICLE_MAX_DIST, _dirAim);
        obj_pj.aimY = obj_pj.y + lengthdir_y(AIM_RETICLE_MAX_DIST, _dirAim);
    }
    var _aAng = point_direction(obj_pj.x, obj_pj.y, obj_pj.aimX, obj_pj.aimY);
    if (_aAng >= 315 || _aAng < 45) {
        obj_pj.aimDir = 3;
    } else if (_aAng >= 45 && _aAng < 135) {
        obj_pj.aimDir = 1;
    } else if (_aAng >= 135 && _aAng < 225) {
        obj_pj.aimDir = 2;
    } else {
        obj_pj.aimDir = 0;
    }
}

var _inventario_visible = obj_tecla_hechizos.visible

if (gamepad_button_check_pressed(0, joy_swap)){
	if (_inventario_visible) mostrar_hechizos() else mostrar_inventario()
	_inventario_visible = !_inventario_visible
}

//Inventario
if (_inventario_visible){
	var _pos_seleccionado = obj_inventario.posSeleccionado
	if (gamepad_button_check_pressed(0, joy_derecha)){
		_pos_seleccionado+= 1
	}
	
	if (gamepad_button_check_pressed(0, joy_izquierda)){
		_pos_seleccionado-= 1
	}
	
	if (gamepad_button_check_pressed(0, joy_arriba) && _pos_seleccionado > 9){
		_pos_seleccionado-= 10
	}

	if (gamepad_button_check_pressed(0, joy_abajo) && _pos_seleccionado <= 9){
		_pos_seleccionado+= 10
	}
	
	if (obj_inventario.posSeleccionado != _pos_seleccionado){
		if (_pos_seleccionado < 0) _pos_seleccionado = 19
		if (_pos_seleccionado > 19) _pos_seleccionado = 0
		obj_inventario.posSeleccionado = _pos_seleccionado
		obj_inventario.seleccionado = obj_inventario.slots[_pos_seleccionado].indice;
	}
//Hechizos
}else{
	var _seleccionado = obj_hechizos.posSeleccionado
	if (gamepad_button_check_pressed(0, joy_derecha)){
		_seleccionado+= 1
	}
	
	if (gamepad_button_check_pressed(0, joy_izquierda)){
		_seleccionado-= 1
	}
	
	if (gamepad_button_check_pressed(0, joy_arriba) && _seleccionado - 5 >= 0){
		_seleccionado-= 5
	}

	if (gamepad_button_check_pressed(0, joy_abajo) && _seleccionado + 5 <= 19){
		_seleccionado+= 5
	}
	
	if (_seleccionado != obj_hechizos.posSeleccionado){
		if (_seleccionado < 0) _seleccionado = 19
		if (_seleccionado > 19) _seleccionado = 0
		indicar_panel_hechizos(_seleccionado < 10)
		obj_hechizos.posSeleccionado = _seleccionado
		obj_hechizos.seleccionado = obj_hechizos.hechizos[_seleccionado].indice
	}
}

if (keyboard_check_pressed(key_usar) || gamepad_button_check_pressed(0, joy_usar) || mouse_check_button_pressed(mb_right)){
	usarItem();
}

if (obj_pj.muerto) exit;

//Acciones
if (keyboard_check_pressed(key_agarrar)){
	tirarItem()
}

if (keyboard_check_pressed(key_atacar) || gamepad_button_check_pressed(0, joy_atacar)){
	pjAtacar();
}

if (keyboard_check_pressed(key_meditar) || gamepad_button_check_pressed(0, joy_meditar)){
	meditar();
}

if (keyboard_check_pressed(key_agarrar) || gamepad_button_check_pressed(0, joy_agarrar)){
	agarrar();
}

// R3 recentra mira
if (gamepad_button_check_pressed(0, joy_aimClick)) {
    with (obj_pj) {
        aimX = clamp(x, global.render_x + AIM_RETICLE_CLAMP_MARGIN, global.render_x + get_render_width() - AIM_RETICLE_CLAMP_MARGIN);
        aimY = clamp(y - 16, global.render_y + AIM_RETICLE_CLAMP_MARGIN, global.render_y + get_render_height() - AIM_RETICLE_CLAMP_MARGIN);
        aimActive = true;
        aimDir = direccion;
    }
}

//apuntado
if (gamepad_button_check_pressed(0, joy_disparoRango) || gamepad_button_check_pressed(0, joy_disparoRangoRT)) {
	with (obj_pj){
	    if (!aimActive) {
	        switch (direccion) {
	            case 0:
	                aimX = x;
	                aimY = y + TILE_SIZE * 3;
	                break;
	            case 1:
	                aimX = x;
	                aimY = y - TILE_SIZE * 3;
	                break;
	            case 2:
	                aimX = x - TILE_SIZE * 3;
	                aimY = y;
	                break;
	            case 3:
	                aimX = x + TILE_SIZE * 3;
	                aimY = y;
	                break;
	        }
	        aimX = clamp(aimX, global.render_x + AIM_RETICLE_CLAMP_MARGIN, global.render_x + get_render_width() - AIM_RETICLE_CLAMP_MARGIN);
	        aimY = clamp(aimY, global.render_y + AIM_RETICLE_CLAMP_MARGIN, global.render_y + get_render_height() - AIM_RETICLE_CLAMP_MARGIN);
	        aimActive = true;
	    }
	    if (_inventario_visible) {
			//arco
			with (obj_pj) ataqueArco(aimX, aimY);
	    } else {
			//hechizo
			with (obj_pj) lanzarHechizo(aimX, aimY);
	    }
	}
}

//if (keyboard_check_pressed(keyLanzar)){
//	lanzar();
//}