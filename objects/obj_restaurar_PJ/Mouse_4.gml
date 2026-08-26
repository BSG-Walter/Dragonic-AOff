/// @description  Elige

if (obj_control_seleccionarPJ.elegido != -1) {
    var _elegido = obj_control_seleccionarPJ.elegido;
    var _archivo = "partida" + string(_elegido) + ".ini";
    var _backup = "partida" + string(_elegido) + "_BackUp.ini";

    if (file_exists(_archivo) && file_exists(_backup)) {
        if (partidaLegible(_backup, false)) {
            enc(_backup);
        }
        file_delete(_archivo);
        file_copy(_backup, _archivo);
        with (obj_control_seleccionarPJ) {
            cargarPJs(_elegido);
        }
        instance_destroy();
    }
}

