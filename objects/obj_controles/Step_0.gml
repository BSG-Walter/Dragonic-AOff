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

//if (keyboard_check_pressed(keyLanzar)){
//	lanzar();
//}