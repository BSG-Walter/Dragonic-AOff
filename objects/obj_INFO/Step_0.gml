/// @description  Control general

if (instance_exists(padre)) {

    x = padre.x;
    y = padre.y;
    depth = padre.depth - 10;
    
    if (padre == obj_pj.id || padre.object_index == obj_persona) {
        if (padre.dicePalabrasMagicas && padre.palabrasMagicas != "") {
            instance_destroy();
        }
    }
    
    visible = true;
    
} else {
    visible = true;
}

if (modY < limite) {
    modY++;
}

if (tiempo == -1) {
    image_alpha -= 0.0085;
    
    if (image_alpha <= 0) {
        instance_destroy();
    }
} else {
    tiempo--;
    if (tiempo = 0) {
        instance_destroy();
    }
}








