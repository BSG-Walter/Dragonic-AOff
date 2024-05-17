/// @description Insert description here
// You can write your code in this editor

obj_pj.upKey = keyboard_check(keyUp) || obj_flecha_arriba.apretada || (gamepad_axis_value(0,gp_axislv) < -0.4)
obj_pj.downKey = keyboard_check(keyDown) || obj_flecha_abajo.apretada || (gamepad_axis_value(0,gp_axislv) > 0.4)
obj_pj.leftKey = keyboard_check(keyLeft) || obj_flecha_izq.apretada || (gamepad_axis_value(0,gp_axislh) < -0.4)
obj_pj.rightKey = keyboard_check(keyRight) || obj_flecha_der.apretada || (gamepad_axis_value(0,gp_axislh) > 0.4)

if (obj_pj.muerto) exit;

if (keyboard_check_pressed(keyAgarrar)){
	tirarItem()
}

if (keyboard_check_pressed(keyAtacar) || gamepad_button_check_pressed(0, joyAtacar)){
	pjAtacar();
}

if (keyboard_check_pressed(keyUsar) || gamepad_button_check_pressed(0, joyUsar)){
	usarItem();
}

if (keyboard_check_pressed(keyMeditar) || gamepad_button_check_pressed(0, joyMeditar)){
	meditar();
}

if (keyboard_check_pressed(keyAgarrar) || gamepad_button_check_pressed(0, joyAgarrar)){
	agarrar();
}

//Inventario
var posSeleccionado = obj_inventario.posSeleccionado
if (gamepad_button_check_pressed(0, joyDerecha)){
	posSeleccionado+= 1
}
	
if (gamepad_button_check_pressed(0, joyIzquierda)){
	posSeleccionado-= 1
}
	
if (gamepad_button_check_pressed(0, joyArriba) || gamepad_button_check_pressed(0, joyAbajo)){
	if (obj_inventario.posSeleccionado < 9){
		posSeleccionado+= 10
	}else{
		posSeleccionado-= 10
	}
}
	
posSeleccionado = clamp(posSeleccionado,0,19)
obj_inventario.posSeleccionado = posSeleccionado
obj_inventario.seleccionado = obj_inventario.indiceInv[posSeleccionado];


//if (keyboard_check_pressed(keyLanzar)){
//	lanzar();
//}