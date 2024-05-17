/// @description Insert description here
// You can write your code in this editor

obj_pj.upKey = keyboard_check(key_up) || obj_flecha_arriba.apretada || (gamepad_axis_value(0,gp_axislv) < -0.4)
obj_pj.downKey = keyboard_check(key_down) || obj_flecha_abajo.apretada || (gamepad_axis_value(0,gp_axislv) > 0.4)
obj_pj.leftKey = keyboard_check(key_left) || obj_flecha_izq.apretada || (gamepad_axis_value(0,gp_axislh) < -0.4)
obj_pj.rightKey = keyboard_check(key_right) || obj_flecha_der.apretada || (gamepad_axis_value(0,gp_axislh) > 0.4)

if (obj_pj.muerto) exit;

//Acciones
if (keyboard_check_pressed(key_agarrar)){
	tirarItem()
}

if (keyboard_check_pressed(key_atacar) || gamepad_button_check_pressed(0, joy_atacar)){
	pjAtacar();
}

if (keyboard_check_pressed(key_usar) || gamepad_button_check_pressed(0, joy_usar)){
	usarItem();
}

if (keyboard_check_pressed(key_meditar) || gamepad_button_check_pressed(0, joy_meditar)){
	meditar();
}

if (keyboard_check_pressed(key_agarrar) || gamepad_button_check_pressed(0, joy_agarrar)){
	agarrar();
}

//swap inventario/hechizos
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
	
	if (gamepad_button_check_pressed(0, joy_arriba) && obj_inventario.posSeleccionado > 9){
		_pos_seleccionado-= 10
	}

	if (gamepad_button_check_pressed(0, joy_abajo) && obj_inventario.posSeleccionado <= 9){
		_pos_seleccionado+= 10
	}
	
	if (_pos_seleccionado < 0) _pos_seleccionado = 19
	if (_pos_seleccionado > 19) _pos_seleccionado = 0

	obj_inventario.posSeleccionado = _pos_seleccionado
	obj_inventario.seleccionado = obj_inventario.indiceInv[_pos_seleccionado];
	
//Hechizos
}else{
	var _seleccionado = obj_hechizos.seleccionado
	if (gamepad_button_check_pressed(0, joy_derecha)){
		_seleccionado+= 1
	}
	
	if (gamepad_button_check_pressed(0, joy_izquierda)){
		_seleccionado-= 1
	}
	
	if (gamepad_button_check_pressed(0, joy_arriba) && obj_inventario.posSeleccionado - 5 >= 0){
		_seleccionado-= 5
	}

	if (gamepad_button_check_pressed(0, joy_abajo) && obj_inventario.posSeleccionado + 5 <= 19){
		_seleccionado+= 5
	}
	
	if (_seleccionado < 0) _seleccionado = 19
	if (_seleccionado > 19) _seleccionado = 0
	indicar_panel_hechizos(_seleccionado < 10)
	
	obj_hechizos.seleccionado = _seleccionado
}

//if (keyboard_check_pressed(keyLanzar)){
//	lanzar();
//}